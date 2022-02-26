# This will install the software necessary to build a Bitcoin Node. Requires ARM based Chef Client 17+

directory '/mnt/bitcore' do
    owner 'root'
    group 'root'
    mode '0777'
    action :create
end

# execute 'Edit Fstab' do
#     command 'echo UUID=f3aeb9a9-d201-4ca9-9806-47150dca98e0 /mnt/bitcore ext4 defaults,nofail,x-systemd.device-timeout=2 1 1 >> /etc/fstab'
#     action:run
# end
version = '22.0'
checksum = 'b8713c6c5f03f5258b54e9f436e2ed6d85449aa24c2c9972f91963d413e86311'

remote_file "/home/pi/bitcoin-#{version}-arm-linux-gnueabihf.tar.gz" do
    source "https://bitcoin.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-arm-linux-gnueabihf.tar.gz"
    owner 'pi'
    group 'pi'
    mode '0755'
    ssl_verify_mode :verify_none
    action :create
end

execute 'Check Checksum' do
    command "gpg --verify '#{checksum}' /home/pi/bitcoin-#{version}-arm-linux-gnueabihf.tar.gz"
    action:run
end

#   archive_file '/home/pi/bitcoin-0.20.1-arm-linux-gnueabihf.tar.gz' do
#     destination      '/home/pi'
#   end

execute 'Extract BitCoin' do
    command "cd /home/pi&&tar xzf bitcoin-#{version}-arm-linux-gnueabihf.tar.gz"
    action:run
end

execute 'Install BitCoin' do
    command "sudo install -m 0755 -o root -t /usr/local/bin /home/pi/bitcoin-#{version}/bin/*"
    action:run
    # ignore_failure true
end

execute 'Install Missing Packages' do
    command 'apt-get install qt4-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev -y --fix-missing'
    action:run
    # ignore_failure true
end

# Need to add code to run as service
