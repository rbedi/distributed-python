import etcd
import controller
from collections import defaultdict

import pickle
import base64

client = controller.controller

func_ctrs = defaultdict(int)

def generate_distributed(orig):

    def new_func(*args, **kwargs):
        if not controller.replication_enabled:
            return orig(*args, **kwargs)

        name = orig.__module__ + "." + orig.__name__
        global func_ctrs
        func_ctrs[name] += 1
        key = name + '_' + str(func_ctrs[name])

        try:
            value = (True, orig(*args, **kwargs))
        except Exception as e:
            value = (False, e)

        controller.disable_replication()
        try:
            client.write(key, pickle.dumps(value).hex(), prevExist=False)
        except etcd.EtcdAlreadyExist:
            value = pickle.loads(bytes.fromhex(client.read(key).value))
        controller.enable_replication()

        success, val = value
        if success: return val
        else: raise val

    return new_func

def generate_distributed_locked(orig):
    def new_func(*args, **kwargs):
        if not controller.replication_enabled:
            return orig(*args, **kwargs)

        name = orig.__module__ + "." + orig.__name__
        global func_ctrs
        func_ctrs[name] += 1
        key = name + '_' + str(func_ctrs[name])

        lock = etcd.Lock(client, key + "_lock")
        lock.acquire(blocking=True, lock_ttl=2)

        try:
            value = pickle.loads(bytes.fromhex(client.read(key).value))
        except etcd.EtcdKeyNotFound:
            try: value = (True, orig(*args, **kwargs))
            except Exception as e: value = (False, e)
            client.write(key, pickle.dumps(value).hex(), prevExist=False)

        lock.release()

        success, val = value
        if success: return val
        else: raise val

    return new_func
