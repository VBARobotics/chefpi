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

# apt_package 'name' do
#   default_release              String
#   options                      String, Array
#   overwrite_config_files       true, false # default value: false
#   package_name                 String, Array
#   response_file                String
#   response_file_variables      Hash # default value: {}
#   timeout                      String, Integer
#   version                      String, Array
#   action                       Symbol # defaults to :install if not specified
# end
