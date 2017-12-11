rm -rf *.etcd

export DISCOVERY_URL=$(curl https://discovery.etcd.io/new?size=1)
export SCRIPT_PATH=${1}

tmux \
  new-session -s "s1" ./etc.sh n1 2379 select-layout even-horizontal
