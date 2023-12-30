#!/bin/bash
# Prepare Photon 4 template for vSphere cloning
# @author Michael Poore

## Configure SSH server
echo ' - Configuring SSH server daemon ...'
# sed -i '/^PermitRootLogin/s/yes/no/' /etc/ssh/sshd_config
sed -i "s/.*PubkeyAuthentication.*/PubkeyAuthentication yes/g" /etc/ssh/sshd_config
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config