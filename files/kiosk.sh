#!/bin/bsh
sudo apt install wtype
cp wayfire.ini /home/kiosk/.config/wayfire.ini
sudo raspi-config nonint do_change_timezone America/Chicago
sudo raspi-config nonint do_configure_keyboard us
sudo raspi-config nonint do_wifi_country US
sudo raspi-config nonint do_boot_behaviour B4
