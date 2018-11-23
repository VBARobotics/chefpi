#
# Cookbook:: rfid_reader
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#Install RFID Reader

execute 'Install pyusb' do
  command 'cd /home/pi&&git clone https://github.com/lthiery/SPI-Py.git
&&cd SPI-Py/&&python setup.py install
&&cd /home/pi&&git clone https://github.com/mxgxw/MFRC522-python.git'
  action:run
end

execute 'Configure' do
  command 'raspi-config nonint do_spi 0&&reboot'
  action :run
  ignore_failure true
end
