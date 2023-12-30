#!/bin/bash
# Prepare Photon 5 template for vSphere cloning
# @author Michael Poore

## Apply updates
echo ' - Updating the guest operating system ...'
tdnf upgrade tdnf -y --refresh &>/dev/null
tdnf distro-sync -y &>/dev/null

# install software
tdnf install git docker-compose vim bindutils -y &>/dev/null

# download vscode cli 
# curl -sSL https://raw.githubusercontent.com/microsoft/vscode-dev-containers/master/script-library/common-alpine.sh | bash -s -- install