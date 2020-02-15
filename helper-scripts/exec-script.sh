file_name=go1.13.8.linux-armv6l.tar.gz
for i in `seq 0 5`; do
  scp ~/Downloads/rasppi/$file_name life@192.168.2.1$i:.
  ssh life@192.168.2.1$i "sudo tar zxvf $file_name -C /opt"
  ssh life@192.168.2.1$i "rm $file_name"

done
