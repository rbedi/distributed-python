import subprocess
import etcd
import os

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
name = os.getenv("NODE_NAME", "infra1")
discovery_url = os.getenv("DISCOVERY_URL")

command ="etcd --name {name}  --listen-client-urls http://127.0.0.1:{listen_port} --advertise-client-urls http://127.0.0.1:{listen_port} --listen-peer-urls http://127.0.0.1:{advertise_port} --initial-advertise-peer-urls http://127.0.0.1:{advertise_port} --discovery {discovery_url} &".format(name=name, listen_port=listen_port, advertise_port=advertise_port, discovery_url=discovery_url)

#os.system(command + " &")
subprocess.Popen(command, shell=True, stderr=subprocess.DEVNULL, stdout=subprocess.DEVNULL)

time.sleep(0.1)

controller = etcd.Client(port=listen_port)

