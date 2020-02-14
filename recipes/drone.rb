#Install Pyparrot

execute 'Clone PyParrot Repository' do
  command 'cd /home/pi&&git clone https://github.com/amymcgovern/pyparrot'
  action:run
end
execute 'Install Pyparrot' do
  command 'pip install pyparrot'
  action:run
end
