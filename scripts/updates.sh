#!/bin/bash
# Prepare Photon 4 template for vSphere cloning
# @author Michael Poore

## Apply updates
echo ' - Updating the guest operating system ...'
tdnf upgrade tdnf -y --refresh &>/dev/null
tdnf distro-sync -y &>/dev/null