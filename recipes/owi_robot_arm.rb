#Robotics Rasberry Pi Pre-Configuration

#Install PyUSB for Robot Arm

execute 'Clone Repository' do
  command 'cd /home/pi&&git clone https://github.com/VBARobotics/arm.git'
  action:run
end

execute 'Install pyusb' do
  command 'pip3 install pyusb'
  action:run
end
