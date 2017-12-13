#!/bin/bash
export NODE_NAME=${1}
export IP1=${2}

SSHCMD="rm -rf *.etcd; NODE_NAME=${NODE_NAME} DISCOVERY_URL=${DISCOVERY_URL} MYIP=${IP1} python3 /home/rishi/distributed-python/${SCRIPT_PATH}"
gcloud compute --project ppi-cloud ssh --zone us-west1-b demo-1 -- "sh -c \"${SSHCMD}\""
sleep 10000

# python3 ${SCRIPT_PATH}; sleep 10000
