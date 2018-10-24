sudo ip link set wlan0 up

sleep 10

sudo apt update
sudo apt -y upgrade 

pip3 install -U django flask 

sdk selfupdate
sdk uninstall groovy 2.5.2
sdk uninstall kotlin 1.2.61
sdk uninstall kscript 2.4.5
sdk uninstall micronaut 1.0.0.M4
sdk uninstall scala 2.12.6
sdk uninstall vertx 3.5.3
sdk install groovy
sdk install kotlin
sdk install kscript
sdk install micronaut 
sdk install scala
sdk install vertx
sdk flush temp
sdk flush archives

rvm get stable --auto-dotfiles
rvm remove ruby 2.5.1
rvm install ruby --latest
rvm reload
rvm use ruby
gem install rails

sudo ip link set wlan0 down
