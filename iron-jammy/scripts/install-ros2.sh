#!/usr/bin/env bash

sudo apt-get update
sudo NEEDRESTART_MODE=a apt-get install ros-dev-tools -y
sudo NEEDRESTART_MODE=a apt-get install ros-iron-desktop -y
##sudo apt install ros-iron-ros-base
sudo NEEDRESTART_MODE=a apt-get install ~nros-iron-rqt* -y

echo "source /opt/ros/iron/setup.bash" >> /home/vagrant/.profile
touch /home/vagrant/.Xauthority