#Raspberry Pi 3.5" touchscreen install
xecute 'Clone Driver Repository' do
  command 'https://github.com/waveshare/LCD-show.git&&cd LCD-show/&&./LCD35B-show-V2'
  action:run
end
