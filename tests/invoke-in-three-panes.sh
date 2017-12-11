rm -rf *.etcd

export DISCOVERY_URL=$(curl https://discovery.etcd.io/new?size=3)
export SCRIPT_PATH=${1}

tmux \
  new-session 'BADCLOCK=1 ./etc.sh n1 2379' \; \
  split-window './etc.sh n2 12379' \; \
  split-window './etc.sh n3 22379' \; \
  select-layout even-horizontal
