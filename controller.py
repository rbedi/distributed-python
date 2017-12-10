import etcd
import os

port = os.getenv("ETCD_CLIENT_PORT", 2379)
controller = etcd.Client(port=port)