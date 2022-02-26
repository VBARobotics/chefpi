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
version = "bitcoin-22.0"

remote_file "/home/pi/#{version}-arm-linux-gnueabihf.tar.gz" do
    source "https://bitcoin.org/bin/bitcoin-core-22.0/#{version}-arm-linux-gnueabihf.tar.gz"
    owner 'pi'
    group 'pi'
    mode '0755'
    action :create
end

#   archive_file '/home/pi/bitcoin-0.20.1-arm-linux-gnueabihf.tar.gz' do
#     destination      '/home/pi'
#   end

execute 'Extract BitCoin' do
    command "cd /home/pi&&tar xzf #{version}-arm-linux-gnueabihf.tar.gz"
    action:run
end

execute 'Extract BitCoin' do
    command "sudo install -m 0755 -o root -t /usr/local/bin /home/pi/#{version}/bin/*"
    action:run
    # ignore_failure true
end

execute 'Install Missing Packages' do
    command 'apt-get install qt4-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev -y --fix-missing'
    action:run
    # ignore_failure true
end

# Need to add code to run as service
