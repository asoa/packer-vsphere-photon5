## Packer build for vsphere photon 5.0
Summary: packer build to create a vsphere photon 5.0 template and upload to vcenter content library 

## Acknowledgements
Used code from the following github repos to create this packer build:
- https://blog.v12n.io/creating-vsphere-vm-templates-with-packer-part-1/


## Prerequisites
1. packer must be installed on system running packer build
2. download photon 5.0 iso from https://packages.vmware.com/photon/5.0/
3. nfs datastore mounted in vsphere to store photon iso
4. install make ```sudo apt install make```

## Getting Started
1. update variables in .env_template and rename to .env
2. run ```make main``` to:
    - run packer validate
    - run packer build -> creates photon 5.0 template

## TODO
- [ ] add STIG validation to packer scripts
- [ ] add integration test to validate template

