## Packer build for vsphere photon 5.0
Summary: packer build to create a vsphere photon 5.0 template and upload to vcenter content library 

## Acknowledgements
Used code from the following blobs / github repos to create this packer build:
- https://blog.v12n.io/creating-vsphere-vm-templates-with-packer-part-1/
- https://github.com/mpoore/packer-vsphere-photon5


## Prerequisites
1. packer must be installed on system running packer build
1. download photon 5.0 iso from https://packages.vmware.com/photon/5.0/
1. nfs datastore mounted in vsphere to store photon iso
1. install make ```sudo apt install make```
1. if using gitlab to run packer build, you'll need the following:
    - gitlab project with personal access token
    - gitlab runner with packer installed or docker executor that can pull packer image

## Getting Started (local packer build)
1. update variables in .env_template and rename to .env
2. run ```make main``` to:
    - run packer validate
    - run packer build -> creates photon 5.0 template

## Getting Started (gitlab build)
1. create project and access token
1. update variables in .env_template and rename to .env
1. run ```add_project_variables.py``` script to add variables to project
1. push code to gitlab repository -> .gitlab-ci.yml will run packer build

## TODO
- [ ] add STIG validation to packer scripts
- [ ] add integration test to validate template
- [ ] create script to install vscode cli 
- [x] install other packages (e.g. vim, git, etc.)
- [ ] add cronie (cron) to template and configure crontab

## Troubleshooting
- Problem: packer build hangs on "Waiting for IP
    - Solution: disable and re-enable network adapter in vsphere

