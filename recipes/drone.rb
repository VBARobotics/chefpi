#Install Pyparrot

execute 'Clone PyParrot Repository' do
  command 'cd /home/pi&&git clone https://github.com/amymcgovern/pyparrot&&chown 777 ~/pyparrot'
  action:run
end
execute 'Install Pyparrot' do
  command 'pip3 install pyparrot'
  action:run
end
