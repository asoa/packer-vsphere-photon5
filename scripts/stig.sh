#!/usr/bin/env 

# TODO: the vsphere stig package is available via package manager

hostname="${gitlab_hostname}.${gitlab_domain_name}"
ip_address=$(nslookup $hostname | awk '/^Address: / { print $2 }')

echo "gitlab token: $GITLAB_TOKEN"
echo "gitlab hostname: $hostname"
# install ansible community.general collection
ansible-galaxy collection install community.general
ansible-galaxy collection install ansible.posix
# clone the repo
git config --global user.name foo 
git config --global user.email bar@domain.local
git config --global init.defaultBranch main
git config --global http.sslVerify false
# TODO: change ip_address to hostname once gitlab FQDN is resolvable
git init
git remote add origin https://root:${GITLAB_TOKEN}@${ip_address}/g6/photon_build.git
git pull origin main
ansible-playbook ./ansible/vmware-photon-5.0-stig-ansible-hardening/playbook.yml -v --extra-vars @./ansible/vmware-photon-5.0-stig-ansible-hardening/vars-example.yml