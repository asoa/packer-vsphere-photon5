# ----------------------------------------------------------------------------
# Name:         photon5.auto.pkrvars.hcl
# Description:  Required vSphere variables for Photon 4 Packer builds
# Author:       Michael Poore (@mpoore)
# URL:          https://github.com/v12n-io/packer
# ----------------------------------------------------------------------------

# ISO Settings
os_iso_file                     = "photon-5.0-dde71ec57.x86_64.iso"
os_iso_path                     = "photon"
os_iso_datastore                = "nfs"

# OS Meta Data
vm_os_family                    = "Linux"
vm_os_type                      = "Server"
vm_os_vendor                    = "Photon"
vm_os_version                   = "5.0"

# VM Hardware Settings
vm_firmware                     = "efi"
vm_cpu_sockets                  = 1
vm_cpu_cores                    = 1
vm_mem_size                     = 2048
vm_nic_type                     = "vmxnet3"
vm_disk_controller              = ["pvscsi"]
vm_disk_size                    = 32768
vm_disk_thin                    = true
vm_cdrom_type                   = "sata"

# VM Settings
vm_cdrom_remove                 = true
vcenter_convert_template        = false
vcenter_content_library_ovf     = true
vcenter_content_library_destroy = true

# VM OS Settings
vm_guestos_type                 = "vmwarePhoton64Guest"

# Provisioner Settings
script_files                    = [ "scripts/updates.sh",
                                    "scripts/sshd.sh",
                                    "scripts/pki.sh",
                                    "scripts/motd.sh",
                                    "scripts/cleanup.sh" ]
inline_cmds                     = []

# vSphere Settings

vcenter_username        = "your_vcenter_username"
vcenter_password        = "your_vcenter_password"
admin_password          = "your_admin_password"
build_username          = "your_build_username"
build_password          = "your_build_password"
vcenter_server          = "your_vcenter_server"
vcenter_datacenter      = "your_vcenter_datacenter"
vcenter_cluster         = "your_vcenter_cluster"
vcenter_folder          = "your_vcenter_folder"
vcenter_datastore       = "your_vcenter_datastore"
vcenter_network         = "your_vcenter_network"


