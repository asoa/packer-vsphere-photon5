#!/bin/bash
# Prepare Photon 4 template for vSphere cloning
# @author Michael Poore

source .env

## Final cleanup actions
echo ' - Executing final cleanup tasks ...'
echo -n > /etc/machine-id