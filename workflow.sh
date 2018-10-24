#Set up a laptop/RPi as the router to external network
#  - configure eth0 with 192.168.2.1/24

./flash -d /dev/mmcblk0 \
    -C config.txt \
    -u cloud-init-yamls/master10.yaml \
    ./hypriotos-rpi-v1.8.0.img

./flash -d /dev/mmcblk0 \
    -C config.txt \
    -u cloud-init-yamls/worker1?.yaml \
    ./hypriotos-rpi-v1.8.0.img


nmap -sP 192.168.2.1/24


