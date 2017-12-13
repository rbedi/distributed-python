rm -rf *.etcd

export DISCOVERY_URL=$(curl https://discovery.etcd.io/new?size=1)
export SCRIPT_PATH=${1}

IPS=(10.138.0.3 10.138.0.5 10.138.0.6 10.138.0.7 10.138.0.8 10.138.0.9 10.138.0.10 10.138.0.11 10.128.0.5 10.128.0.6 10.128.0.7 10.128.0.8 10.150.0.2 10.150.0.3 10.150.0.4 10.150.0.5)
NAMES=(n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16)

case $2 in
  1)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      select-layout even-horizontal
    ;;
  2)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      select-layout even-horizontal
    ;;
  3)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      select-layout even-horizontal
    ;;
  4)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      select-layout even-horizontal
    ;;
  5)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      select-layout even-horizontal
    ;;
  6)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      split-window "./etc.sh $(NAMES[5]) $(IPS[5])" \; \
      select-layout even-horizontal
    ;;
  7)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      split-window "./etc.sh $(NAMES[5]) $(IPS[5])" \; \
      split-window "./etc.sh $(NAMES[6]) $(IPS[6])" \; \
      select-layout even-horizontal
    ;;
  8)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      split-window "./etc.sh $(NAMES[5]) $(IPS[5])" \; \
      split-window "./etc.sh $(NAMES[6]) $(IPS[6])" \; \
      split-window "./etc.sh $(NAMES[7]) $(IPS[7])" \; \
      select-layout even-horizontal
    ;;
  9)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      split-window "./etc.sh $(NAMES[5]) $(IPS[5])" \; \
      split-window "./etc.sh $(NAMES[6]) $(IPS[6])" \; \
      split-window "./etc.sh $(NAMES[7]) $(IPS[7])" \; \
      split-window "./etc.sh $(NAMES[8]) $(IPS[8])" \; \
      select-layout even-horizontal
    ;;
  10)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      split-window "./etc.sh $(NAMES[5]) $(IPS[5])" \; \
      split-window "./etc.sh $(NAMES[6]) $(IPS[6])" \; \
      split-window "./etc.sh $(NAMES[7]) $(IPS[7])" \; \
      split-window "./etc.sh $(NAMES[8]) $(IPS[8])" \; \
      split-window "./etc.sh $(NAMES[9]) $(IPS[9])" \; \
      select-layout even-horizontal
    ;;
  11)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      split-window "./etc.sh $(NAMES[5]) $(IPS[5])" \; \
      split-window "./etc.sh $(NAMES[6]) $(IPS[6])" \; \
      split-window "./etc.sh $(NAMES[7]) $(IPS[7])" \; \
      split-window "./etc.sh $(NAMES[8]) $(IPS[8])" \; \
      split-window "./etc.sh $(NAMES[9]) $(IPS[9])" \; \
      split-window "./etc.sh $(NAMES[10]) $(IPS[10])" \; \
      select-layout even-horizontal
    ;;
  12)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      split-window "./etc.sh $(NAMES[5]) $(IPS[5])" \; \
      split-window "./etc.sh $(NAMES[6]) $(IPS[6])" \; \
      split-window "./etc.sh $(NAMES[7]) $(IPS[7])" \; \
      split-window "./etc.sh $(NAMES[8]) $(IPS[8])" \; \
      split-window "./etc.sh $(NAMES[9]) $(IPS[9])" \; \
      split-window "./etc.sh $(NAMES[10]) $(IPS[10])" \; \
      split-window "./etc.sh $(NAMES[11]) $(IPS[11])" \; \
      select-layout even-horizontal
    ;;
  13)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      split-window "./etc.sh $(NAMES[5]) $(IPS[5])" \; \
      split-window "./etc.sh $(NAMES[6]) $(IPS[6])" \; \
      split-window "./etc.sh $(NAMES[7]) $(IPS[7])" \; \
      split-window "./etc.sh $(NAMES[8]) $(IPS[8])" \; \
      split-window "./etc.sh $(NAMES[9]) $(IPS[9])" \; \
      split-window "./etc.sh $(NAMES[10]) $(IPS[10])" \; \
      split-window "./etc.sh $(NAMES[11]) $(IPS[11])" \; \
      split-window "./etc.sh $(NAMES[12]) $(IPS[12])" \; \
      select-layout even-horizontal
    ;;
  14)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      split-window "./etc.sh $(NAMES[5]) $(IPS[5])" \; \
      split-window "./etc.sh $(NAMES[6]) $(IPS[6])" \; \
      split-window "./etc.sh $(NAMES[7]) $(IPS[7])" \; \
      split-window "./etc.sh $(NAMES[8]) $(IPS[8])" \; \
      split-window "./etc.sh $(NAMES[9]) $(IPS[9])" \; \
      split-window "./etc.sh $(NAMES[10]) $(IPS[10])" \; \
      split-window "./etc.sh $(NAMES[11]) $(IPS[11])" \; \
      split-window "./etc.sh $(NAMES[12]) $(IPS[12])" \; \
      split-window "./etc.sh $(NAMES[13]) $(IPS[13])" \; \
      select-layout even-horizontal
    ;;
  15)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      split-window "./etc.sh $(NAMES[5]) $(IPS[5])" \; \
      split-window "./etc.sh $(NAMES[6]) $(IPS[6])" \; \
      split-window "./etc.sh $(NAMES[7]) $(IPS[7])" \; \
      split-window "./etc.sh $(NAMES[8]) $(IPS[8])" \; \
      split-window "./etc.sh $(NAMES[9]) $(IPS[9])" \; \
      split-window "./etc.sh $(NAMES[10]) $(IPS[10])" \; \
      split-window "./etc.sh $(NAMES[11]) $(IPS[11])" \; \
      split-window "./etc.sh $(NAMES[12]) $(IPS[12])" \; \
      split-window "./etc.sh $(NAMES[13]) $(IPS[13])" \; \
      split-window "./etc.sh $(NAMES[14]) $(IPS[14])" \; \
      select-layout even-horizontal
    ;;
  16)
    tmux \ new-session "./etc.sh $(NAMES[0]) $(IPS[0])" \; \
      split-window "./etc.sh $(NAMES[1]) $(IPS[1])" \; \
      split-window "./etc.sh $(NAMES[2]) $(IPS[2])" \; \
      split-window "./etc.sh $(NAMES[3]) $(IPS[3])" \; \
      split-window "./etc.sh $(NAMES[4]) $(IPS[4])" \; \
      split-window "./etc.sh $(NAMES[5]) $(IPS[5])" \; \
      split-window "./etc.sh $(NAMES[6]) $(IPS[6])" \; \
      split-window "./etc.sh $(NAMES[7]) $(IPS[7])" \; \
      split-window "./etc.sh $(NAMES[8]) $(IPS[8])" \; \
      split-window "./etc.sh $(NAMES[9]) $(IPS[9])" \; \
      split-window "./etc.sh $(NAMES[10]) $(IPS[10])" \; \
      split-window "./etc.sh $(NAMES[11]) $(IPS[11])" \; \
      split-window "./etc.sh $(NAMES[12]) $(IPS[12])" \; \
      split-window "./etc.sh $(NAMES[13]) $(IPS[13])" \; \
      split-window "./etc.sh $(NAMES[14]) $(IPS[14])" \; \
      split-window "./etc.sh $(NAMES[15]) $(IPS[15])" \; \
      select-layout even-horizontal
    ;;
