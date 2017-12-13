import subprocess
import etcd
import os
import sys

import time
replication_enabled = True
def disable_replication():
    global replication_enabled
    replication_enabled = False
def enable_replication():
    global replication_enabled
    replication_enabled = True


listen_port = int(os.getenv("CLIENT_PORT", 2379))
advertise_port = listen_port + 1
name =  os.getenv("NODE_NAME", "infra1")
discovery_url = os.getenv("DISCOVERY_URL")
ip = os.getenv("MYIP")
command = "etcd --name {name} --listen-client-urls http://127.0.0.1:2379,http://{IP1}:2379  --advertise-client-urls http://127.0.0.1:2379,http://{IP1}:2379 --listen-peer-urls http://0.0.0.0:2380 --initial-advertise-peer-urls http://{IP1}:2380 --discovery {DISCOVERY_URL}".format(
            name=name, IP1=ip, DISCOVERY_URL=discovery_url)
subprocess.Popen(command, shell=True)
Popen.wait(30)
