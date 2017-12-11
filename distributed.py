import etcd
import controller
from collections import defaultdict
client = controller.controller

func_ctrs = defaultdict(int)

def generate_distributed(orig):

    def new_func(*args, **kwargs):
        name = orig.__module__ + "." + orig.__name__
        global func_ctrs
        func_ctrs[name] += 1
        key = name + '_' + str(func_ctrs[name])
        try:
            value = orig(*args, **kwargs)
            client.write(key, value, prevExist=False)
        except etcd.EtcdAlreadyExist:
            value = client.read(key).value
        return value

    return new_func
