# ----------------------------------------------------------------------------
# Name:         definitions.pkr.hcl
# Description:  Variable definitions for vSphere Packer builds
# Author:       Michael Poore (@mpoore)
# URL:          https://github.com/v12n-io/packer
# ----------------------------------------------------------------------------

# -------------------------------------------------------------------------- #
#                           Variable Definitions                             #
# -------------------------------------------------------------------------- #
# Sensitive Variables
// variable "vcenter_username" {
//     type        = string
//     description = "Username used by Packer to connect to vCenter"
//     sensitive   = true
// }
// variable "vcenter_password" {
//     type        = string
//     description = "Password used by Packer to connect to vCenter"
//     sensitive   = true
// }
// variable "admin_username" {
//     type        = string
//     description = "Default administrative username for this OS"
//     sensitive   = true
//     default     = "root"
// }
// variable "admin_password" {
//     type        = string
//     description = "Password for the default administrative user"
//     sensitive   = true
// }
// variable "build_username" {
//     type        = string
//     description = "Non-administrative username for this OS"
//     sensitive   = true
// }
// variable "build_password" {
//     type        = string
//     description = "Password for the non-administrative user"
//     sensitive   = true
// }

// # vCenter Configuration
// variable "vcenter_server" {
//     type        = string
//     description = "FQDN for the vCenter Server Packer will create this build in"
// }
// variable "vcenter_insecure" {
//     type        = bool
//     description = "Validate the SSL connection to vCenter"
//     default     = true
// }
// variable "vcenter_datacenter" {
//     type        = string
//     description = "Datacenter name in vCenter where the build will be created"
// }
// variable "vcenter_cluster" {
//     type        = string
//     description = "Cluster name in vCenter where the build will be created"
// }
// variable "vcenter_folder" {
//     type        = string
//     description = "Folder path in vCenter where the build will be created"
// }
// variable "vcenter_datastore" {
//     type        = string
//     description = "vSphere datastore where the build will be created"
// }
// variable "vcenter_network" {
//     type        = string
//     description = "vSphere network where the build will be created"
// }

// # vCenter and ISO Configuration
// variable "os_iso_datastore" {
//     type        = string
//     description = "vSphere datastore name where source OS media reside"
// }
// variable "os_iso_path" {
//     type        = string
//     description = "Datastore path to the OS media"
// }
// variable "os_iso_file" {
//     type        = string
//     description = "OS media file"
// }

// # OS Meta Data
// variable "vm_os_family" {
//     type        = string
//     description = "The family that the OS belongs to (e.g. 'Windows' or 'Linux')"
// }
// variable "vm_os_vendor" {
//     type        = string
//     description = "The vendor or product name for the OS (e.g. 'Photon', 'RHEL', 'CentOS, 'Ubuntu', 'Windows' etc)"
// }
// variable "vm_os_type" {
//     type        = string
//     description = "The type of OS (e.g. 'Server' or 'Desktop')"
//     default     = "Server"
// }
// variable "vm_os_version" {
//     type        = string
//     description = "The major version of the OS (e.g. '7', '8.5', '2022')"
// }

// # Virtual Machine OS Settings
// variable "vm_name" {
//     type        = string
//     description = "The name of the VM"
// }
// variable "vm_guestos_type" {
//     type        = string
//     description = "The type of guest operating system (or guestid) in vSphere"
// }
// variable "vm_guestos_language" {
//     type        = string
//     description = "The language that the guest OS will be configured with"
//     default     = "en-GB"
// }
// variable "vm_guestos_keyboard" {
//     type        = string
//     description = "The keyboard type that the guest OS will use"
//     default     = "en-GB"
// }
// variable "vm_guestos_timezone" {
//     type        = string
//     description = "The timezone the guest OS will be set to"
//     default     = "GMT Standard Time"
// }
// variable "vm_guestos_systemlocale" {
//     type        = string
//     description = "The language that the guest OS will be configured with"
//     default     = "en-US"
// }

// # Virtual Machine Hardware Settings
// variable "vm_firmware" {
//     type        = string
//     description = "Type of VM firmware to use (one of 'efi', 'efi-secure' or 'bios')"
//     default     = "efi-secure"
// }
// variable "vm_hardware_version" {
//     type        = number
//     description = "Version of VM hardware to use (e.g. '18' or '19' etc)"
//     default     = 19
// }
// variable "vm_boot_order" {
//     type        = string
//     description = "Set the comma-separated boot order for the VM (e.g. 'disk,cdrom')"
//     default     = "disk,cdrom"
// }
// variable "vm_boot_wait" {
//     type        = string
//     description = "Set the delay for the VM to wait after booting before the boot command is sent (e.g. '1h5m2s' or '2s')"
//     default     = "2s"
// }
// variable "vm_tools_policy" {
//     type        = bool
//     description = "Upgrade VM tools on reboot?"
//     default     = true
// }
// variable "vm_cpu_sockets" {
//     type        = number
//     description = "The number of CPU sockets for the VM"
//     default     = 1
// }
// variable "vm_cpu_cores" {
//     type        = number
//     description = "The number of cores per CPU socket for the VM"
//     default     = 1
// }
// variable "vm_cpu_hotadd" {
//     type        = bool
//     description = "Enable CPU hot-add"
//     default     = false
// }
// variable "vm_mem_size" {
//     type        = number
//     description = "The size of memory in MB for the VM"
//     default     = 2048
// }
// variable "vm_mem_hotadd" {
//     type        = bool
//     description = "Enable Memory hot-add"
//     default     = false
// }
// variable "vm_cdrom_type" {
//     type        = string
//     description = "Type of CD-ROM drive to add to the VM (e.g. 'sata' or 'ide')"
//     default     = "sata"
// }
// variable "vm_cdrom_remove" {
//     type        = bool
//     description = "Remove CD-ROM drives when provisioning is complete?"
//     default     = true
// }
// variable "vm_nic_type" {
//     type        = string
//     description = "Type of network card for the VM (e.g. 'e1000e' or 'vmxnet3')"
//     default     = "vmxnet3"
// }
// variable "vm_disk_controller" {
//     type        = list(string)
//     description = "An ordered list of disk controller types to be added to the VM (e.g. one of more of 'pvscsi', 'scsi' etc)"
//     default     = ["pvscsi"]
// }
// variable "vm_disk_size" {
//     type        = number
//     description = "The size of system disk in MB for the VM"
//     default     = 40960
// }
// variable "vm_disk_thin" {
//     type        = bool
//     description = "Thin provision the disk?"
//     default     = true
// }

// # vSphere Content Library and Template Configuration
// variable "vcenter_convert_template" {
//     type        = bool
//     description = "Convert the VM to a template?"
//     default     = false
// }
// variable "vcenter_content_library" {
//     type        = string
//     description = "Name of the vSphere Content Library to export the VM to"
//     default     = null
// }
// variable "vcenter_content_library_ovf" {
//     type        = bool
//     description = "Export to Content Library as an OVF file?"
//     default     = true
// }
// variable "vcenter_content_library_destroy" {
//     type        = bool
//     description = "Delete the VM after successfully exporting to a Content Library?"
//     default     = true
// }
// variable "vcenter_content_library_skip" {
//     type        = bool
//     description = "Skip adding the VM to a Content Library?"
//     default     = false
// }
// variable "vcenter_snapshot" {
//     type        = bool
//     description = "Create a snapshot of the VM?"
//     default     = false
// }
// variable "vcenter_snapshot_name" {
//     type        = string
//     description = "Name of the snapshot to be created on the VM"
//     default     = "Created by Packer"
// }

// # Timeout Settings
// variable "vm_ip_timeout" {
//     type        = string
//     description = "Set the timeout for the VM to obtain an IP address (e.g. '1h5m2s' or '2s')"
//     default     = "30m"
// }
// variable "vm_shutdown_timeout" {
//     type = string
//     description = "Set the timeout for the VM to shutdown after the shutdown command is issued (e.g. '1h5m2s' or '2s')"
//     default     = "30m"
// }

// # Provisioner Settings
// variable "script_files" {
//     type        = list(string)
//     description = "List of OS scripts to execute"
//     default     = []
// }
// variable "inline_cmds" {
//     type        = list(string)
//     description = "List of OS commands to execute"
//     default     = []
// }

# ----------------------------------------------------------------------------
# Name:         photon5.pkr.hcl
# Description:  Build definition for Photon 5
# Author:       Michael Poore (@mpoore)
# URL:          https://github.com/v12n-io/packer
# ----------------------------------------------------------------------------

# -------------------------------------------------------------------------- #
#                           Packer Configuration                             #
# -------------------------------------------------------------------------- #
packer {
    required_version = ">= 1.9.1"
    required_plugins {
        vsphere = {
            version = "= v1.1.2"
            source  = "github.com/hashicorp/vsphere"
        }
    }
}

# -------------------------------------------------------------------------- #
#                              Local Variables                               #
# -------------------------------------------------------------------------- #
locals { 
    build_version               = formatdate("YY.MM (DD.hhmm)", timestamp())
    ks_content                  = {
                                    "ks.cfg" = templatefile("${abspath(path.root)}/config/ks.pkrtpl.hcl", {
                                        build_username            = var.build_username
                                        build_password            = var.build_password
                                        admin_username            = var.admin_username
                                        admin_password            = var.admin_password
                                        vm_name                   = var.vm_name # provides argument for variable in ks.pkrtpl.hcl
                                    })
                                  }
    vm_description              = "VER: ${ local.build_version }\nISO: ${ var.os_iso_file }"
}

# -------------------------------------------------------------------------- #
#                       Template Source Definitions                          #
# -------------------------------------------------------------------------- #
source "vsphere-iso" "photon5" {
    # vCenter
    vcenter_server              = var.vcenter_server
    username                    = var.vcenter_username
    password                    = var.vcenter_password
    insecure_connection         = var.vcenter_insecure
    datacenter                  = var.vcenter_datacenter
    cluster                     = var.vcenter_cluster
    folder                      = var.vcenter_folder
    datastore                   = var.vcenter_datastore

    # Content Library and Template Settings
    convert_to_template         = var.vcenter_convert_template
    create_snapshot             = var.vcenter_snapshot
    snapshot_name               = var.vcenter_snapshot_name
    dynamic "content_library_destination" {
        for_each = var.vcenter_content_library != null ? [1] : []
            content {
                library         = var.vcenter_content_library
                name            = "${ source.name }"
                description     = local.vm_description
                ovf             = var.vcenter_content_library_ovf
                destroy         = var.vcenter_content_library_destroy
                skip_import     = var.vcenter_content_library_skip
            }
    }

    # Virtual Machine
    guest_os_type               = var.vm_guestos_type
    // vm_name                     = "${ source.name }-${ var.build_branch }"
    vm_name                     = var.vm_name
    notes                       = local.vm_description
    firmware                    = var.vm_firmware
    CPUs                        = var.vm_cpu_sockets
    cpu_cores                   = var.vm_cpu_cores
    CPU_hot_plug                = var.vm_cpu_hotadd
    RAM                         = var.vm_mem_size
    RAM_hot_plug                = var.vm_mem_hotadd
    cdrom_type                  = var.vm_cdrom_type
    remove_cdrom                = var.vm_cdrom_remove
    disk_controller_type        = var.vm_disk_controller
    storage {
        disk_size               = var.vm_disk_size
        disk_thin_provisioned   = var.vm_disk_thin
    }
    network_adapters {
        network                 = var.vcenter_network
        network_card            = var.vm_nic_type
    }

    # Removeable Media
    iso_paths                   = [ "[${ var.os_iso_datastore }] ${ var.os_iso_path }/${ var.os_iso_file }" ]
    cd_content                  = local.ks_content

    # Boot and Provisioner
    boot_order                  = var.vm_boot_order
    boot_wait                   = var.vm_boot_wait
    boot_command                = [ "<esc><wait>c",
                                    "linux /isolinux/vmlinuz root=/dev/ram0 loglevel=3 insecure_installation=1 ks=/dev/sr1:/ks.cfg photon.media=cdrom",
                                    "<enter>", "initrd /isolinux/initrd.img",
                                    "<enter>",
                                    "boot",
                                    "<enter>" ]
    ip_wait_timeout             = var.vm_ip_timeout
    communicator                = "ssh"
    ssh_username                = var.build_username
    ssh_password                = var.build_password
    shutdown_command            = "sudo shutdown -P now"
    shutdown_timeout            = var.vm_shutdown_timeout
}

# -------------------------------------------------------------------------- #
#                             Build Management                               #
# -------------------------------------------------------------------------- #
build {
    # Build sources
    sources                     = [ "source.vsphere-iso.photon5" ]
    
    # Shell Provisioner to execute scripts
    provisioner "shell" {
        execute_command     = "echo '${ var.build_password }' | {{.Vars}} sudo -E -S sh -eu '{{.Path}}'"
        scripts             = var.script_files
        environment_vars    = [ "BUILDVERSION=${ local.build_version }"]
    }

    post-processor "manifest" {
        output              = "manifest.txt"
        strip_path          = true
        custom_data         = {
            vcenter_fqdn    = var.vcenter_server
            vcenter_folder  = var.vcenter_folder
            iso_file        = var.os_iso_file
        }
    }
}