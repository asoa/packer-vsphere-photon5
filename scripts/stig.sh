#!/usr/bin/env 

# TODO: the vsphere stig package is available via package manager

hostname="$gitlab_hostname.$gitlab_domain_name"
ip_address=$(nslookup $hostname | awk '/^Address: / { print $2 }')

# clone the repo
git config --global user.name foo 
git config --global user.email bar@domain.local
git config --global init.defaultBranch main
git config --global http.sslVerify false
# TODO: change ip_address to hostname once gitlab FQDN is resolvable
git remote add origin https://${gitlab_access_token}@${ip_address}/g6/photon_build.git
git pull origin main
# TODO: configure playbook for localhost
ansible-playbook -u root ./ansible/vmware-photon-5.0-stig-ansible-hardening/playbook.yml -k -v --extra-vars @./asible/vmware-photon-5.0-stig-ansible-hardening/vars-example.yml