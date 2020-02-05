sudo apt update
sudo apt upgrade -y

sudo apt install -y vim-tiny tmux glances openjdk-8-jdk nginx

# TODO: install esl-erlang_22.1.6-1~raspbian~buster_armhf.deb from erlang-solutions.com
sudo apt install -y esl-erlang elixir 
sudo apt install -y snapd flatpak

sudo apt install -y python3 python3-pip python3-dev
pip3 install flask

sudo apt install -y unzip zip gnupg2 dirmngr 

curl -s "https://get.sdkman.io" | bash
. ~/.sdkman/bin/sdkman-init.sh
cat ~/.sdkman/etc/config | grep -v auto > ~/.sdkman/etc/_temp
cat ~/.sdkman/etc/{sdkman_config,_temp} > ~/.sdkman/etc/config
sdk install groovy
sdk install kotlin
sdk install kscript
sdk install micronaut
sdk install scala
sdk install vertx

sudo apt install -y python-zmq

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs

sudo apt install -y git curl zlib1g-dev
sudo apt install -y openssl libreadline6-dev git-core zlib1g libssl-dev
sudo apt install -y libyaml-dev libsqlite3-dev sqlite3
sudo apt install -y libxml2-dev libxslt-dev
sudo apt install -y autoconf automake libtool bison

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

gpg --keyserver hkp://keys.gnupg.net \
  --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
  7D2BAF1CF37B13E2069D6956105BD0E739499BDB
echo "gem: --no-document" > ~/.gemrc
curl -sSL https://get.rvm.io | bash -s stable 

