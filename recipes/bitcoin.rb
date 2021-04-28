sudo mkdir /mnt/bitcore
vi /etc/fstab UUID=f3aeb9a9-d201-4ca9-9806-47150dca98e0 /mnt/bitcore ext4 defaults 1 1
wget https://bitcoin.org/bin/bitcoin-core-0.20.1/bitcoin-0.20.1-arm-linux-gnueabihf.tar.gz
tar xzf bitcoin-0.20.1-arm-linux-gnueabihf.tar.gz
sudo install -m 0755 -o root -t /usr/local/bin bitcoin-0.20.1/bin/*
sudo apt-get install qt4-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev -y --fix-missing

