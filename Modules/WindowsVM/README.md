<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_managed_disk.manageddisk1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/managed_disk) | resource |
| [azurerm_network_interface.nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_virtual_machine_data_disk_attachment.datadisk_attach](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_data_disk_attachment) | resource |
| [azurerm_windows_virtual_machine.vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine) | resource |
| [random_string.osdisk](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [azurerm_subnet.subnet0000](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adminpassword"></a> [adminpassword](#input\_adminpassword) | The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created. | `any` | n/a | yes |
| <a name="input_adminusername"></a> [adminusername](#input\_adminusername) | The name of the Windows Virtual Machine. Changing this forces a new resource to be created. | `any` | n/a | yes |
| <a name="input_caching"></a> [caching](#input\_caching) | (Required) Specifies the caching requirements for this Data Disk. Possible values include None, ReadOnly and ReadWrite. | `string` | `"ReadWrite"` | no |
| <a name="input_create_option"></a> [create\_option](#input\_create\_option) | (Required) The method to use when creating the managed disk. Changing this forces a new resource to be created. Possible values include: | `string` | `"Empty"` | no |
| <a name="input_disk_size_gb"></a> [disk\_size\_gb](#input\_disk\_size\_gb) | (Optional, Required for a new managed disk) Specifies the size of the managed disk to create in gigabytes. If create\_option is Copy or FromImage, then the value must be equal to or greater than the source's size. The size can only be increased. | `number` | `10` | no |
| <a name="input_disk_storage_account_type"></a> [disk\_storage\_account\_type](#input\_disk\_storage\_account\_type) | (Required) The type of storage to use for the managed disk. Possible values are Standard\_LRS, StandardSSD\_ZRS, Premium\_LRS, Premium\_ZRS, StandardSSD\_LRS or UltraSSD\_LRS. | `string` | `"StandardSSD_LRS"` | no |
| <a name="input_location"></a> [location](#input\_location) | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | `"eastus2"` | no |
| <a name="input_lun"></a> [lun](#input\_lun) | (Required) The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created. | `string` | `"10"` | no |
| <a name="input_microsoft_image"></a> [microsoft\_image](#input\_microsoft\_image) | n/a | `bool` | `false` | no |
| <a name="input_network_access_policy"></a> [network\_access\_policy](#input\_network\_access\_policy) | Policy for accessing the disk via network. Allowed values are AllowAll, AllowPrivate, and DenyAll. | `string` | `"AllowAll"` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | (Optional) Whether it is allowed to access the disk via public network. Defaults to true. | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group in which to create the Data Factory Linked Service. Changing this forces a new resource | `string` | `"defaultrg"` | no |
| <a name="input_size"></a> [size](#input\_size) | Choose the VM size. Ref: https://aka.ms/WinVMSizes | `string` | `"Standard_DS2_v2"` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | Specifies the SKU of the image used to create the virtual machines. | `string` | `"2019-Datacenter"` | no |
| <a name="input_source_image_id"></a> [source\_image\_id](#input\_source\_image\_id) | The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. | `string` | `"/subscriptions/00000000-0000-0000-0000-00000000000000/resourceGroups/VMImages/providers/Microsoft.Compute/galleries/ImageGallery_36142c11/images/Win2019_AzureWindowsBaseline_Definition"` | no |
| <a name="input_storage_account_type"></a> [storage\_account\_type](#input\_storage\_account\_type) | The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard\_LRS, StandardSSD\_LRS and Premium\_LRS. Changing this forces a new resource to be created. | `string` | `"StandardSSD_LRS"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | <pre>{<br>  "ContactEmail": "jp.perez@microsoft.com",<br>  "ContactName": "JP",<br>  "Department": "IT",<br>  "Environment": "NonProd",<br>  "OwnerName": "JP",<br>  "Project": "Test"<br>}</pre> | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The vnet where the VM will be deployed and the target subnet exist. | `any` | n/a | yes |
| <a name="input_vm_count"></a> [vm\_count](#input\_vm\_count) | The quanitity of VMs would you like to deploy. | `string` | `"1"` | no |
| <a name="input_vm_subnet_name"></a> [vm\_subnet\_name](#input\_vm\_subnet\_name) | Existing subnet where the VM will be deployed. | `any` | n/a | yes |
| <a name="input_vnet_resource_group_name"></a> [vnet\_resource\_group\_name](#input\_vnet\_resource\_group\_name) | The resource group where the vnet is deployed and the target subnet exist. | `any` | n/a | yes |
| <a name="input_windows_virtual_machine_name"></a> [windows\_virtual\_machine\_name](#input\_windows\_virtual\_machine\_name) | The name of the Windows Virtual Machine. Changing this forces a new resource to be created. | `any` | n/a | yes |
| <a name="input_with_managed_disk"></a> [with\_managed\_disk](#input\_with\_managed\_disk) | Would you like to deploy with managed disk? | `string` | `"true"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | The Zone in which this Virtual Machine should be created. Changing this forces a new resource to be created. | `string` | `"2"` | no |
| <a name="input_zones"></a> [zones](#input\_zones) | (Optional) A collection containing the availability zone to allocate the Managed Disk in. | `string` | `"2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The id of the resource created. |
| <a name="output_name"></a> [name](#output\_name) | The name of the resoruce created. |
<!-- END_TF_DOCS -->