NAMES=(demo-1 demo-2 demo-3 demo-4 demo-5 demo-6 demo-7 demo-8 demo-9 demo-10 demo-11 demo-12 demo-13 demo-14 demo-15 demo-16)
ZONES=(us-west1-b us-west1-b us-west1-b us-west1-b us-west1-b us-west1-b us-west1-b us-west1-b us-central1-c us-central1-c us-central1-c us-central1-c us-east4-a us-east4-a us-east4-a us-east4-a)
EXPT=${2}

mkdir -p benchmark/${EXPT}

for i in $(seq 0 $((${1}-1)));
    do gcloud compute scp --ssh-key-file /Users/rishi/.ssh/nopass ${NAMES[${i}]}:/home/rishi/${EXPT}.csv benchmark/${EXPT}/${NAMES[${i}]}.csv --zone ${ZONES[${i}]};
done
