#!/usr/bin/env bash

[[ ! -e /etc/apt/apt.conf.d/proxy ]] && echo 'Acquire::http { Proxy "http://192.168.33.10:3142"; }' | sudo tee -a /etc/apt/apt.conf.d/proxy

sudo apt-get update && sudo apt-get install locales -y
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

sudo apt-get install software-properties-common -y
sudo add-apt-repository universe -y

sudo apt-get update && sudo apt-get install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt-get update
sudo NEEDRESTART_MODE=a apt-get upgrade -y

echo "source /opt/ros/iron/setup.bash" >> /home/vagrant/.bashrc
touch /home/vagrant/.Xauthority
