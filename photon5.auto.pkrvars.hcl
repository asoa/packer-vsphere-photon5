# modified template from here: https://blog.v12n.io/creating-vsphere-vm-templates-with-packer-part-1/
# https://github.com/mpoore/packer-vsphere-photon5

vm_name                         = "#{vm_name}#"
build_ansible_user              = "#{build_ansible_user}#"
build_ansible_key               = "#{build_ansible_key}#"
admin_password                  = "#{admin_password}#"
build_username                  = "#{build_username}#"
build_password                  = "#{build_password}#"
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
vcenter_convert_template        = true
vcenter_content_library         = "#{vcenter_content_library}#"
vcenter_content_library_ovf     = true
vcenter_content_library_destroy = true

# VM OS Settings
vm_guestos_type                 = "vmwarePhoton64Guest"

# Provisioner Settings
script_files                    = [ "scripts/updates.sh",
                                    "scripts/sshd.sh",
                                    "scripts/motd.sh",
                                    "scripts/stig.sh",
                                    "scripts/cleanup.sh" ]
inline_cmds                     = []

# vSphere Settings
vcenter_username        = "#{vcenter_username}#"
vcenter_password        = "#{vcenter_password}#"
vcenter_server          = "#{vcenter_server}#"
vcenter_datacenter      = "#{vcenter_datacenter}#"
vcenter_cluster         = "#{vcenter_cluster}#"
vcenter_folder          = "#{vcenter_folder}#"
vcenter_datastore       = "#{vcenter_datastore}#"
vcenter_network         = "#{vcenter_network}#"


