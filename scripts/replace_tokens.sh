#!/usr/bin/env bash

source .env

function replace() {
  # create tokens array without quotes
  sed "s|#{vcenter_server}#|$vcenter_server|g" $1
}

replace "photon5.auto.pkrvars.hcl"