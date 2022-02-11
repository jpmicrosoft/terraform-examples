variable "vm_count" {
    description = "The quanitity of VMs would you like to deploy."
    default = "1"
}

variable "with_managed_disk" {
    description = "Would you like to deploy with managed disk?"
    default = "true"
}

variable "resource_group_name" {
    description = "(Required) The name of the resource group in which to create the Data Factory Linked Service. Changing this forces a new resource"
    default = "defaultrg"
}

variable "location" {
    description =   "The supported Azure location where the resource exists. Changing this forces a new resource to be created."
    default = "eastus2"
}

variable "windows_virtual_machine_name" {
    description ="The name of the Windows Virtual Machine. Changing this forces a new resource to be created."
}

variable "size" {
    description = "Choose the VM size. Ref: https://aka.ms/WinVMSizes"
   default =   "Standard_DS2_v2"
}

variable "storage_account_type" {
   description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS and Premium_LRS. Changing this forces a new resource to be created."
   default =   "StandardSSD_LRS"
}
variable "sku" {
    description = "Specifies the SKU of the image used to create the virtual machines."
   default =   "2019-Datacenter"
}

variable "vnet_resource_group_name" {
    description = "The resource group where the vnet is deployed and the target subnet exist."
 }


variable "virtual_network_name" {
    description = "The vnet where the VM will be deployed and the target subnet exist."
 }

variable "vm_subnet_name" {
    description = "Existing subnet where the VM will be deployed."
 }

variable "adminusername" {
   description =   "The name of the Windows Virtual Machine. Changing this forces a new resource to be created."
   }

variable "adminpassword" {
   description =   "The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created."
   }

variable "microsoft_image" {
    default = false
}

variable "source_image_id" {
    description = "The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created."
    default = "/subscriptions/00000000-0000-0000-0000-00000000000000/resourceGroups/VMImages/providers/Microsoft.Compute/galleries/ImageGallery_36142c11/images/Win2019_AzureWindowsBaseline_Definition"
}

variable "zone" {
    description = "The Zone in which this Virtual Machine should be created. Changing this forces a new resource to be created."
    default = "2"
}
variable "tags" {
  type = map(string)
  default = {
    "OwnerName"    = "JP"
    "Department"   = "IT"
    "Project"      = "Test"
    "Environment"  = "NonProd"
    "ContactName"  = "JP"
    "ContactEmail" = "jp.perez@microsoft.com"
  }
  }

  ## Data Disk

  /* Note:
Azure Ultra Disk Storage is only available in a region that support availability zones and can only enabled on the following VM series: ESv3, DSv3, FSv3, LSv2, M and Mv2. For more information see the Azure Ultra Disk Storage product documentation. */
variable "disk_storage_account_type" {
    description = "(Required) The type of storage to use for the managed disk. Possible values are Standard_LRS, StandardSSD_ZRS, Premium_LRS, Premium_ZRS, StandardSSD_LRS or UltraSSD_LRS."
    default = "StandardSSD_LRS"
}


variable "create_option" {
    description = "(Required) The method to use when creating the managed disk. Changing this forces a new resource to be created. Possible values include:"
    default = "Empty"
}

/* NOTE:
Changing this value is disruptive if the disk is attached to a Virtual Machine. The VM will be shut down and de-allocated as required by Azure to action the change. Terraform will attempt to start the machine again after the update if it was in a running state when the apply was started. */

variable "disk_size_gb" {
    description = "(Optional, Required for a new managed disk) Specifies the size of the managed disk to create in gigabytes. If create_option is Copy or FromImage, then the value must be equal to or greater than the source's size. The size can only be increased."
    default = 10
}


# Note: Availability Zones are only supported in select regions at this time.

variable "zones" {
    description = "(Optional) A collection containing the availability zone to allocate the Managed Disk in."
    default = "2"
}

variable "network_access_policy" {
    description = "Policy for accessing the disk via network. Allowed values are AllowAll, AllowPrivate, and DenyAll."
    default = "AllowAll"
}

variable "public_network_access_enabled" {
    description = "(Optional) Whether it is allowed to access the disk via public network. Defaults to true."
    default = false
}

## Attachment
variable "lun" {
    description = "(Required) The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created."
    default = "10"
}

variable "caching" {
    description = "(Required) Specifies the caching requirements for this Data Disk. Possible values include None, ReadOnly and ReadWrite."
    default = "ReadWrite"
}
