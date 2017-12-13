rm -rf *.etcd

export DISCOVERY_URL=$(curl https://discovery.etcd.io/new?size=1)
export SCRIPT_PATH=${1}

tmux \
  new-session './etc.sh n1 10.138.0.3' \; \
  split-window './etc.sh n2 10.138.0.5' \; \
  split-window './etc.sh n3 10.138.0.6' \; \
  select-layout even-horizontal
