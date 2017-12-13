rm -rf *.etcd

TOCURL="https://discovery.etcd.io/new?size=${2}"
echo $TOCURL
export DISCOVERY_URL=$(curl ${TOCURL})
export SCRIPT_PATH=${1}
export ARGS=${3}

IPS=(10.138.0.3 10.138.0.5 10.138.0.6 10.138.0.7 10.138.0.8 10.138.0.9 10.138.0.10 10.138.0.11 10.128.0.5 10.128.0.6 10.128.0.7 10.128.0.8 10.150.0.2 10.150.0.3 10.150.0.4 10.150.0.5)
NAMES=(demo-1 demo-2 demo-3 demo-4 demo-5 demo-6 demo-7 demo-8 demo-9 demo-10 demo-11 demo-12 demo-13 demo-14 demo-15 demo-16)
ZONES=(us-west1-b us-west1-b us-west1-b us-west1-b us-west1-b us-west1-b us-west1-b us-west1-b us-central1-c us-central1-c us-central1-c us-central1-c us-east4-a us-east4-a us-east4-a us-east4-a)

DUMPTO=tests/script
echo "tmux \\" > ${DUMPTO}
echo "new-session \"tests/etc.sh ${NAMES[0]} ${IPS[0]} ${ZONES[${i}]}\" \\; \\" >> ${DUMPTO};
echo "select-layout tiled \\; \\" >> ${DUMPTO};
for i in $(seq 1 $((${2}-1)));
    do echo "   split-window \"tests/etc.sh ${NAMES[${i}]} ${IPS[${i}]} ${ZONES[${i}]}\" \\; \\" >> ${DUMPTO};
       echo "select-layout tiled \\; \\" >> ${DUMPTO};
done
bash tests/script

