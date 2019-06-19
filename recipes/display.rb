#Raspberry Pi 3.5" touchscreen install
execute 'Clone Driver Repository' do
  command 'https://github.com/waveshare/LCD-show.git&&cd LCD-show/&&./LCD35B-show-V2'
  action:run
end
