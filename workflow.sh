#Set up a laptop/RPi as the router to external network
#  - configure eth0 with 192.168.2.1/24

tools/flash -d /dev/mmcblk0 \
    -C rasppi-init-config/config.txt \
    -u rasppi-init-config/master10.yaml \
    tools/hypriotos-rpi-v1.11.4.img

tools/flash -d /dev/mmcblk0 \
    -C rasppi-init-config/config.txt \
    -u rasppi-init-config/worker1?.yaml \
    tools/hypriotos-rpi-v1.11.4.img


nmap -sP 192.168.2.1/24


