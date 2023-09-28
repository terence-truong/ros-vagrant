# ROS Vagrant Virtual Machines

Vagrant Virtual Machines for multiple versions (and combinations of versions) of ROS and Ubuntu/Rocky Linux.
Sets up basic Ubuntu/RockyLinux box with ROS installed.

> NOTE: These boxes are not pre-built, so they can take lots of time to provision. For pre-provisioned boxes, visit app.vagrantup.com/trnc3.

## Requirements

1. [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
2. [Vagrant](https://www.vagrantup.com/downloads.html)

## Instructions

### Getting started

1. Change directory to the desired combination of ROS version to Linux distro: `cd iron-jammy`
1. Start up machine: `vagrant up`
1. Connect to machine: `vagrant ssh`
1. While inside virtual machine, change directory to workspace source: `cd ros2_ws/src`
1. Create package using cmake: `ros2 pkg create --build-type ament_cmake --node-name my_node my_package --license Apache-2.0`
1. From your favorite editor, make changes inside of 'iron-jammy/ros2_ws/src/my_package'.
1. Power down the machine, after logging out: `vagrant halt`
1. Remove the machine: `vagrant destroy -fg`

### Using XQuartz

1. Download [XQuartz](https://www.xquartz.org/)
1. Open a terminal.
1. Connect to machine: `ssh -X vagrant@172.16.8.10`

## Version Matrices

### Rocky Linux vs ROS 2

|             | Blue Onyx 9 | Green Obsidian 8 |
| :---------: | :----------------: | :-----------: |
| **Rolling** |
| **Jazzy** | 
| **Iron** | [Supported](./iron-onyx/readme.md) |
| **Humble** | | [Supported](./humble-obsidian/readme.md) |
| **Galactic** | **EOL** | **EOL** |
| **Foxy** | **EOL** | **EOL** |

### Ubuntu vs ROS

|            | Jammy (22.04 LTS) | Focal (20.04 LTS) | Bionic (18.04 LTS) | Xenial (16.04 LTS) |
| :--------: | :---------------: | :---------------: | :----------------: | :----------------: |
| **Noetic** | | [Supported](./noetic-focal/readme.md) |
| **Melodic** | **EOL** | **EOL** | **EOL** | **EOL** |

### Ubuntu vs ROS 2

|             | Jammy (22.04 LTS) | Focal (20.04 LTS) | Bionic (18.04 LTS) | Xenial (16.04 LTS) |
| :---------: | :---------------: | :---------------: | :----------------: | :----------------: |
| **Rolling** | [Supported](./rolling-jammy/readme.md) |
| **Jazzy** | 
| **Iron** | [Supported](./iron-jammy/readme.md) |
| **Humble** | [Supported](./humble-jammy/readme.md) | [Supported](./humble-focal/readme.md) |
| **Galactic** | **EOL** | **EOL** | **EOL** | **EOL** |
| **Foxy** | **EOL** | **EOL** |  **EOL** |  **EOL** |

### Gazebo vs ROS versions

In the Vagrant boxes of this repository the recommended versions for Gazebo are installed (TODO)

|                    | Harmonic (LTS) | Garden | Fortress (LTS) | Citadel (LTS) |
| :----------------: | :------------: | :----: | :------------: | :-----------: |
| **Rolling (ROS2)** | | | **Recommended** |
| **Jazzy (ROS2)** |
| **Iron (ROS2)** | **Supported** |
| **Humble (ROS2)**  | | | **Recommended** |
| **Noetic (ROS1)**  | | | | **Recommended** |

## Acknowledgements

This project was inspired by [@karadalex](https://github.com/karadalex/ros-vagrant-environments) and [@lewkoo](https://github.com/lewkoo/ros-vagrant-environments).

## Other notes

UI is disabled on all boxes by default, however, it can be enabled in the Vagrantfile by setting `vb.gui` to `true`.