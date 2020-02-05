#!/bin/bash
ssh life@master10 "mkdir bin"
scp helper-scripts/install-packages.sh life@master10:bin/
scp helper-scripts/wlan0-up.sh life@master10:bin/
scp helper-scripts/wlan0-down.sh life@master10:bin/

for i in `seq 1 5` ; do
  k="life@worker1$i"
  ssh $k "mkdir bin"
  scp helper-scripts/install-packages.sh $k:bin/
  scp helper-scripts/wlan0-up.sh $k:bin/
  scp helper-scripts/wlan0-down.sh $k:bin/
  ssh $k "mkdir .sdkman/etc"
  scp configs/sdkman_config $k:.sdkman/etc/sdkman_config
done
