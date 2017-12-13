#!/bin/bash
export NODE_NAME=${1}
export IP1=${2}
export ZONE=${3}

SSHCMD="rm -rf *.etcd; touch 0; NODE_NAME=${NODE_NAME} DISCOVERY_URL=${DISCOVERY_URL} MYIP=${IP1} python3 /home/rishi/distributed-python/${SCRIPT_PATH}"
gcloud compute --project ppi-cloud ssh --ssh-key-file /Users/rishi/.ssh/nopass --zone ${ZONE} ${NODE_NAME} -- "sh -c \"${SSHCMD}\""
sleep 10000
