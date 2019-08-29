#! /bin/bash

sudo rm /etc/ssh/ssh_host_*
sudo dpkg-reconfigure openssh-server
sudo rm -f /etc/machine-id
sudo dbus-uuidgen --ensure=/etc/machine-id
