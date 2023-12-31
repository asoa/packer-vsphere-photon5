#!/usr/bin/env bash

# create a cloud init config file to dynamically set a hostname
# https://cloudinit.readthedocs.io/en/latest/topics/examples.html#yaml-examples
echo ' - Enabling cloud-init ...'
hostname="myphoton5-$(openssl rand -hex 3)"

cat <<EOF > /etc/cloud/cloud.cfg.d/cloud-init.cfg
#cloud-config
hostname: ${hostname}

ssh_authorized_keys:
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDFzq5JW22MUuktDDuIQ5QgDnBHvUQZyLZ2GjwgHfkiQ9g1wViALymsAkO7STAI80KRSI5WXbLc4OvkMGPvvwR0nGY/EKm3zKXOdmWoaR5f1pMnPldapuMhq0zjZfV5zwA3ag5KD5yfTIBaA/0kl+ZYzbwfrU4HU2n5JtbGQefWv2eqA4Y+3F8GLvuNkwSgRy1sOqPgXjM+Qy02BDpT8n1d9J6wwelA7DmzeqNbQ3wOZIPBzJbmfFJST9Eqd+OF/emimoOldyzUqhls8YK9OKHQgRA3VHtWczp2ye7VaptFMuD1y0xvCoIzkMmMY/Sk2R8dFYjnBQpKcxkQI6KXULGi4H/jQi5qOxGtFpA0pYNMiGsqZDsrNsyC/oY7ocIfrzs0I8ofJ5SKPmAEYASA5kHEnZTkLXNdwzhsUkXJojhZK3HvYVdsk0sgzZY74GMBpMahGSzfRHpsz/Tqb1Q4IL6veEGq/tf62bVn+h8TZBvZMD2KVRpSH2mfQGb9E4X32ZU=

final_message: |
  mycloud-init has finished 
EOF

