
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_diagnostic_logs"></a> [diagnostic\_logs](#module\_diagnostic\_logs) | ../../Modules/DiagnosticLogs/ | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.keyvault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_key_vault_name"></a> [azurerm\_key\_vault\_name](#input\_azurerm\_key\_vault\_name) | The key vault name. | `any` | n/a | yes |
| <a name="input_bypass"></a> [bypass](#input\_bypass) | Specifies which traffic can bypass the network rules. Possible values are AzureServices and None. | `string` | `"AzureServices"` | no |
| <a name="input_certificate_permissions"></a> [certificate\_permissions](#input\_certificate\_permissions) | n/a | `list` | <pre>[<br>  "get",<br>  "list"<br>]</pre> | no |
| <a name="input_default_action"></a> [default\_action](#input\_default\_action) | The Default Action to use when no rules match from ip\_rules / virtual\_network\_subnet\_ids. Possible values are Allow and Deny. | `string` | `"Deny"` | no |
| <a name="input_enabled_for_deployment"></a> [enabled\_for\_deployment](#input\_enabled\_for\_deployment) | (Optional) Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault. Defaults to false | `bool` | `true` | no |
| <a name="input_enabled_for_template_deployment"></a> [enabled\_for\_template\_deployment](#input\_enabled\_for\_template\_deployment) | Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault. Defaults to false | `bool` | `true` | no |
| <a name="input_ip_rules"></a> [ip\_rules](#input\_ip\_rules) | One or more IP Addresses, or CIDR Blocks which should be able to access the Key Vault. | `any` | n/a | yes |
| <a name="input_key_permissions"></a> [key\_permissions](#input\_key\_permissions) | n/a | `list` | <pre>[<br>  "get",<br>  "list"<br>]</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | The region were the resource will be deployed. | `any` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group name. | `any` | n/a | yes |
| <a name="input_secret_permissions"></a> [secret\_permissions](#input\_secret\_permissions) | n/a | `list` | <pre>[<br>  "get",<br>  "list"<br>]</pre> | no |
| <a name="input_storage_account_id"></a> [storage\_account\_id](#input\_storage\_account\_id) | n/a | `string` | `null` | no |
| <a name="input_storage_permissions"></a> [storage\_permissions](#input\_storage\_permissions) | n/a | `list` | <pre>[<br>  "get",<br>  "listsas"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `any` | n/a | yes |
| <a name="input_virtual_network_subnet_ids"></a> [virtual\_network\_subnet\_ids](#input\_virtual\_network\_subnet\_ids) | One or more Subnet ID's which should be able to access this Key Vault. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The id of the key vault created. |
| <a name="output_name"></a> [name](#output\_name) | The name of the key vault created. |
| <a name="output_url"></a> [url](#output\_url) | The url of the key vault created. |