#
# Cookbook:: vba-Robotics
# Recipe:: webserver.#!/usr/bin/env ruby -wKU
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#Install Apache and test page

execute 'Install Apache' do
  command 'apt-get install apache2 php -y'
  action:run
end
execute 'Clone Repository' do
  command 'rm -rf /var/www/html/&&cd /var/www/&&git clone https://github.com/VBARobotics/html.git'
  action:run
end
execute 'UpDate Visudoers' do
  command 'echo "www-data ALL=(ALL) NOPASSWD: ALL">>/etc/sudoers'
  action:run
end
