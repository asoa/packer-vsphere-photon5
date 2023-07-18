#!/bin/bash
# Prepare Photon 4 template for vSphere cloning
# @author Michael Poore

## Install trusted SSL CA certificates
echo ' - Installing trusted SSL CA certificates ...'
pkiCerts=("root.crt" "issuing.crt")
cd /etc/ssl/certs
for cert in ${pkiCerts[@]}; do
    wget -O $cert.pem -q ${PKISERVER}/$cert &>/dev/null
done
/usr/bin/rehash_ca_certificates.sh