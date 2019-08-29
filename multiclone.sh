#!/bin/bash

########################################################

# Script to create multiple KVM clones command arguments
# e.g. ./multiclone box1 box2 box3

########################################################
server=ubuntu18.04-2_server_template

for i in "$@"
do
  echo "Cloning from $server ........"
  virt-clone --original $server --name $i --auto-clone
done
