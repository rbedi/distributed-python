rm -rf *.etcd

discovery_url=$(curl https://discovery.etcd.io/new?size=3)

tmux \
  new-session  "sh -c 'ETCD_NODE_NAME=infra1 ETCD_DISCOVERY_URL=$discovery_url ETCD_CLIENT_PORT=2379 python3 $1; sleep 100'" \; \
  split-window "sh -c 'ETCD_NODE_NAME=infra2 ETCD_DISCOVERY_URL=$discovery_url ETCD_CLIENT_PORT=12379 python3 $1; sleep 100'" \; \
  split-window "sh -c 'ETCD_NODE_NAME=infra3 ETCD_DISCOVERY_URL=$discovery_url ETCD_CLIENT_PORT=22379 python3 $1; sleep 100'" \; \
select-layout even-horizontal
