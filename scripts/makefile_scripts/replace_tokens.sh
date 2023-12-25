#!/usr/bin/env bash

source .env

function replace() {
  # create backup of file before replacing
  cp $1 $1.bak
  sed -i "s|#{vcenter_username}#|$vcenter_username|g" $1
  sed -i "s|#{vcenter_password}#|$vcenter_password|g" $1
  sed -i "s|#{admin_password}#|$admin_password|g" $1
  sed -i "s|#{build_username}#|$build_username|g" $1
  sed -i "s|#{build_password}#|$build_password|g" $1
  sed -i "s|#{vcenter_server}#|$vcenter_server|g" $1
  sed -i "s|#{vcenter_datacenter}#|$vcenter_datacenter|g" $1
  sed -i "s|#{vcenter_cluster}#|$vcenter_cluster|g" $1
  sed -i "s|#{vcenter_folder}#|$vcenter_folder|g" $1
  sed -i "s|#{vcenter_datastore}#|$vcenter_datastore|g" $1
  sed -i "s|#{vcenter_network}#|$vcenter_network|g" $1
}

replace "photon5.auto.pkrvars.hcl"