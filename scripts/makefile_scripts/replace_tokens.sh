#!/usr/bin/env bash

source .env

function replace() {
  # create backup of file before replacing
  cp $1 $1.bak
  sed -i "s|#{vcenter_username}#|$gitlab_vcenter_username|g" $1
  sed -i "s|#{vcenter_password}#|$gitlab_vcenter_password|g" $1
  sed -i "s|#{admin_password}#|$gitlab_admin_password|g" $1
  sed -i "s|#{build_username}#|$gitlab_build_username|g" $1
  sed -i "s|#{build_password}#|$gitlab_build_password|g" $1
  sed -i "s|#{vcenter_server}#|$gitlab_vcenter_server|g" $1
  sed -i "s|#{vcenter_datacenter}#|$gitlab_vcenter_datacenter|g" $1
  sed -i "s|#{vcenter_cluster}#|$gitlab_vcenter_cluster|g" $1
  sed -i "s|#{vcenter_folder}#|$gitlab_vcenter_folder|g" $1
  sed -i "s|#{vcenter_datastore}#|$gitlab_vcenter_datastore|g" $1
  sed -i "s|#{vcenter_network}#|$gitlab_vcenter_network|g" $1
}

function set_vm_name() {
  sed -i "s|#{vm_name}#|$vm_name|g" $1
}

main () {
  replace photon5.auto.pkrvars.hcl
  set_vm_name photon5.auto.pkrvars.hcl
}