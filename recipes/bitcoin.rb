# sudo mkdir /mnt/bitcore
# vi /etc/fstab UUID=f3aeb9a9-d201-4ca9-9806-47150dca98e0 /mnt/bitcore ext4 defaults 1 1
# wget https://bitcoin.org/bin/bitcoin-core-0.20.1/bitcoin-0.20.1-arm-linux-gnueabihf.tar.gz
# tar xzf bitcoin-0.20.1-arm-linux-gnueabihf.tar.gz
# sudo install -m 0755 -o root -t /usr/local/bin bitcoin-0.20.1/bin/*
# sudo apt-get install qt4-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev -y --fix-missing

directory '/mnt/bitcore' do
    owner 'root'
    group 'root'
    mode '0777'
    action :create
end
execute 'Edit Fstab' do
    command 'echo \"UUID=f3aeb9a9-d201-4ca9-9806-47150dca98e0 /mnt/bitcore ext4 defaults,nofail,x-systemd.device-timeout=2 1 1\" >> /etc/fstab'
    action:run
end
/etc/fstab UUID=f3aeb9a9-d201-4ca9-9806-47150dca98e0 /mnt/bitcore ext4 defaults 1 1

remote_file '/home/pi/bitcoin-0.20.1-arm-linux-gnueabihf.tar.gz' do
    source 'https://bitcoin.org/bin/bitcoin-core-0.20.1/bitcoin-0.20.1-arm-linux-gnueabihf.tar.gz'
    owner 'pi'
    group 'pi'
    mode '0755'
    action :create
end

#   archive_file '/home/pi/bitcoin-0.20.1-arm-linux-gnueabihf.tar.gz' do
#     destination      '/home/pi'
#   end

execute 'Extract BitCoin' do
    command 'cd /home/pi&&tar xzf bitcoin-0.20.1-arm-linux-gnueabihf.tar.gz'
    action:run
end

execute 'Extract BitCoin' do
    command 'sudo install -m 0755 -o root -t /usr/local/bin /home/pi/bitcoin-0.20.1/bin/*'
    action:run
    ignore_failure true
end

execute 'Install Missing Packages' do
    command 'apt-get install qt4-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev -y --fix-missing'
    action:run
    ignore_failure true
end
