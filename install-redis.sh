# update
apt-get update
# get the deps
apt-get --yes install build-essential tcl8.5
# create redis user
useradd --gid redis --home-dir /home/redis --create-home --shell /bin/bash redis
# go home
cd /home/redis
# get redis
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable

# build redis
make
sudo make install

# goto utils and start the server

cd utils
sudo ./install_server.sh