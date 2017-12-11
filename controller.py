import etcd
import os

replication_enabled = True
def disable_replication(): use_replicated_funcs = False
def enable_replication(): use_replicated_funcs = True

port = os.getenv("ETCD_CLIENT_PORT", 2379)
controller = etcd.Client(port=port)
