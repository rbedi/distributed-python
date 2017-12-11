sleep $2
tmux \
  new-session  "sh -c 'ETCD_CLIENT_PORT=2379 python3 $1; sleep 100'" \; \
  split-window  "sh -c 'ETCD_CLIENT_PORT=22379 python3 $1; sleep 100'" \; \
  split-window  "sh -c 'ETCD_CLIENT_PORT=32379 python3 $1; sleep 100'" \; \
  select-layout even-horizontal
