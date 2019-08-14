#
# Cookbook:: rfid_reader
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#Install RFID Reader

execute 'Clone Repository' do
  command 'cd /home/pi&&git clone https://github.com/VBARobotics/rfid.git'
  action:run
end
execute 'Install SPI' do
  command 'pip3 install pyusb spidev mfrc522'
  action:run
end

execute 'Configure' do
  command 'raspi-config nonint do_spi 0&&reboot'
  action :run
  ignore_failure true
end
