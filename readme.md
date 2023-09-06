# ROS Vagrant Virtual Machines

Vagrant Virtual Machines for multiple versions (and combinations of versions) of ROS and Ubuntu.
Sets up basic Ubuntu box with ROS installed.

> NOTE: These boxes are not pre-built, so they can take lots of time to provision. For pre-provisioned boxes, visit app.vagrantup.com/trnc3.

## Requirements

1. [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
2. [Vagrant](https://www.vagrantup.com/downloads.html)

## Version Matrices

### Rocky Linux x64 vs ROS 2

|             | Blue Onyx 9 | Green Obsidian 8 |
| :---------: | :----------------: | :-----------: |
| **Rolling** | |
| **Jazzy** | 
| **Iron** | [Supported](./iron-onyx/README.md) |
| **Humble** | | [Supported](./humble-obsidian/README.md) |
| **Galactic** | **EOL** | **EOL** |
| **Foxy** | **EOL** | **EOL** |

### Ubuntu x64 vs ROS

|             | Jammy (22.04 LTS) | Focal (20.04 LTS) | Bionic (18.04 LTS) | Xenial (16.04 LTS) |
| :---------: | :----------------: | :-----------: | :----------------: | :----------------: |
| **Noetic** | | [Supported](./noetic-focal/README.md) |

### Ubuntu x64 vs ROS 2

|             | Jammy (22.04 LTS) | Focal (20.04 LTS) | Bionic (18.04 LTS) | Xenial (16.04 LTS) |
| :---------: | :----------------: | :-----------: | :----------------: | :----------------: |
| **Rolling** | [Supported](./rolling-jammy/README.md) |
| **Jazzy** | 
| **Iron** | [Supported](./iron-jammy/README.md) |
| **Humble** | [Supported](./humble-jammy/README.md) | [Supported](./humble-focal/README.md) |
| **Galactic** | **EOL** | **EOL** | **EOL** | **EOL** |
| **Foxy** | **EOL** | **EOL** |  **EOL** |  **EOL** |

### Gazebo vs ROS versions

In the Vagrant boxes of this repository the recommended versions for Gazebo are installed (TODO)

|         | Harmonic (LTS) | Garden | Fortress (LTS) | Citadel (LTS) |
| :-----: | :---------: | :---------: | :---------: | :---------: |
| **Rolling (ROS2)** | | | **Recommended** |             |
| **Jazzy (ROS2)**   | | | |             |
| **Iron (ROS2)** | **Supported** | | |             |
| **Humble (ROS2)**  |             |             | **Recommended** | |
| **Noetic (ROS1)**  |             |             |   | **Recommended** |

## Other notes

UI is disabled on all boxes by default, however, it can be enabled in the Vagrantfile by setting `vb.gui` to `true`.