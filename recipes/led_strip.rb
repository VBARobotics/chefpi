execute 'Clone Repository' do
  command 'cd /home/pi&&git clone https://github.com/VBARobotics/led_strip.git'
  user 'pi'
  action:run
end

execute 'Install Neopixel' do
  command 'pip3 install rpi_ws281x adafruit-circuitpython-neopixel'
  action:run
end

