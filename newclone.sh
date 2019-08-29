#!/bin/bash

########################################################

# Script to create KVM clones based on answers given

########################################################

#Ask whether to clone Server or Desktop image
read -p "Hi, Do you want to create a Server(1) or a Desktop(2) clone? " choice

echo $choice

#Ask for name for new clone
read -p "what is the new name for this new clone?: " new_name

echo $new_name

server=ubuntu18.04-2_server_template
desktop=ubuntu18.04
#echo $server
#echo $desktop


if [ $choice -eq 1 ]; then
  echo "Cloning from $server ........"
  virt-clone --original $server --name $new_name --auto-clone 

else
   echo "Cloning from $desktop ......."
   virt-clone --original $desktop --name $new_name --auto-clone

fi
