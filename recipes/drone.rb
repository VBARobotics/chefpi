#Install Pyparrot

execute 'Clone PyParrot Repository' do
  command 'cd /home/pi&&git clone https://github.com/VBARobotics/drone.git&&chmod 777 -R /home/pi/drone'
  action:run
end

execute 'Install Pyparrot Pre-Reuqisites' do
  command 'apt-get install bluetooth bluez python-bluez libglib2.0-dev ffmpeg vlc -y'
  action:run
end

execute 'Install Pyparrot' do
  command 'pip3 install untangle zeroconf pyparrot bluepy'
  action:run
end

