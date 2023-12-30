#!/usr/bin/env bash

# source .env

# hostname="$gitlab_vm_name.$gitlab_domain_name"
# ip_address=$(nslookup $hostname | awk '/^Address: / { print $2 }')

# echo "Hostname: $hostname"
# echo "IP Address: $ip_address"

ansible-playbook -i localhost -u root ./ansible/vmware-photon-5.0-stig-ansible-hardening/playbook.yml -k -v --extra-vars @./asible/vmware-photon-5.0-stig-ansible-hardening/vars-example.yml