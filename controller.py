import etcd
import os

replication_enabled = True
def disable_replication():
    global replication_enabled
    replication_enabled = False
def enable_replication():
    global replication_enabled
    replication_enabled = True

port = os.getenv("ETCD_CLIENT_PORT", 2379)
controller = etcd.Client(port=port)
