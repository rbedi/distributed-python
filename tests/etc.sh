#!/bin/bash
export NODE_NAME=${1}
export IP1=${2}
export ZONE=${3}

# SSHCMD="rm -rf distributed-python; \
#         git clone -b rishi https://github.com/rbedi/distributed-python.git; \
  SSHCMD="chmod -R 777 distributed-python; rm -rf *.etcd; touch 0; \
        NODE_NAME=${NODE_NAME} DISCOVERY_URL=${DISCOVERY_URL} MYIP=${IP1} \
        python3 -i /home/rishi/distributed-python/${SCRIPT_PATH} ${ARGS}"
gcloud compute --project ppi-cloud ssh --ssh-key-file /Users/rishi/.ssh/nopass --zone ${ZONE} ${NODE_NAME} -- "sh -c \"${SSHCMD}\""
sleep 10000
