
execute 'Clone Coop' do
    command 'cd /home/pi&&git clone https://github.com/VBARobotics/coop.git'
    user 'pi'
    action:run
end

cron 'Lights' do
  hour '5'
  minute '0'
  command 'python3 /home/pi/coop/lights.py'
end
