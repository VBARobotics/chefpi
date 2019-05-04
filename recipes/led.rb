
execute 'Clone Repository' do
  command 'cd /home/pi&&git clone https://github.com/VBARobotics/led.git'
  action:run
end
