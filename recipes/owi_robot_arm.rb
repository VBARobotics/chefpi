#Robotics Rasberry Pi Pre-Configuration

#Install PyUSB for Robot Arm

#execute 'Install pyusb' do
#  command 'wget https://sourceforge.net/projects/pyusb/files/PyUSB\%201.0/1.0.2/pyusb-1.0.2.tar.gz'
#  action:run
#end

execute 'Unpack' do
  command 'mv /home/pi/robotics/pyusb-1.0.2.tar.gz /home/pi/pyusb-1.0.2.tar.gz&&gunzip /home/pi/pyusb-1.0.2.tar.gz&&tar --directory=/home/pi -xvf /home/pi/pyusb-1.0.2.tar'
  action :run
  ignore_failure true
end

execute 'Install' do
  command 'cd /home/pi/pyusb-1.0.2&&python setup.py install'
  action:run
  ignore_failure true
end
