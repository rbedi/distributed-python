import etcd
import controller
from collections import defaultdict

import pickle
import base64

client = controller.controller

func_ctrs = defaultdict(int)

def generate_distributed(orig):

    def new_func(*args, **kwargs):
        name = orig.__module__ + "." + orig.__name__
        global func_ctrs
        func_ctrs[name] += 1
        key = name + '_' + str(func_ctrs[name])

        try:
            value = (True, orig(*args, **kwargs))
        except Exception as e:
            value = (False, e)

        try:
            client.write(key, pickle.dumps(value).hex(), prevExist=False)
        except etcd.EtcdAlreadyExist:
            value = pickle.loads(bytes.fromhex(client.read(key).value))

        success, val = value
        if success: return val
        else: raise val

    return new_func
