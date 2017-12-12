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

command = "etcd --name {name} --listen-client-urls http://127.0.0.1:2379,http://{IP1}:2379  --advertise-client-urls http://127.0.0.1:2379,http://{IP1}:2379 --listen-peer-urls http://0.0.0.0:2380 --initial-advertise-peer-urls http://{IP1}:2380,http://127.0.0.1:2380 --discovery {DISCOVERY_URL}".format(
    name=name, IP1=ip, DISCOVERY_URL=discovery_url)

# command ="etcd --name {name}  --listen-client-urls http://127.0.0.1:{listen_port} --advertise-client-urls http://127.0.0.1:{listen_port} --listen-peer-urls http://127.0.0.1:{advertise_port} --initial-advertise-peer-urls http://127.0.0.1:{advertise_port} --discovery {discovery_url} &".format(name=name, listen_port=listen_port, advertise_port=advertise_port, discovery_url=discovery_url)
# os.system(command + " &")
subprocess.Popen(command, shell=True, stderr=subprocess.DEVNULL, stdout=subprocess.DEVNULL)
# print(discovery_url)

time.sleep(0.1)

controller = etcd.Client(port=listen_port)

