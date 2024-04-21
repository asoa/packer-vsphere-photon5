#!/bin/bash
# Prepare Photon 5 template for vSphere cloning
# @author Michael Poore

## Apply updates
echo ' - Updating the guest operating system ...'
tdnf upgrade tdnf -y --refresh &>/dev/null
tdnf distro-sync -y &>/dev/null

# install software
tdnf install git docker-compose vim ansible bindutils tar -y &>/dev/null
# download vscode cli 
curl -sSL https://raw.githubusercontent.com/microsoft/vscode-dev-containers/master/script-library/common-alpine.sh | bash -s -- install
curl -sSfL -o cli-alpine-x64.tgz "https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64"
tar -xzf cli-alpine-x64.tgz
mv code /usr/local/bin/