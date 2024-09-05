# Azure Virtual Network Terraform module
Terraform module for creation Azure Virtual Network

## Usage

<!-- BEGIN_TF_DOCS -->
## TODO - Update Docs
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.0.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 4.0.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_diagnostic_setting.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network_dns_servers.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_dns_servers) | resource |
| [azurerm_monitor_diagnostic_categories.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/monitor_diagnostic_categories) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_analytics_destination_type"></a> [analytics\_destination\_type](#input\_analytics\_destination\_type) | Possible values are AzureDiagnostics and Dedicated. | `string` | `"Dedicated"` | no |
| <a name="input_analytics_workspace_id"></a> [analytics\_workspace\_id](#input\_analytics\_workspace\_id) | Resource ID of Log Analytics Workspace | `string` | `null` | no |
| <a name="input_cidr"></a> [cidr](#input\_cidr) | The address space that is used the virtual network. You can supply more than one address space. | `list(string)` | n/a | yes |
| <a name="input_custom_dns"></a> [custom\_dns](#input\_custom\_dns) | List of IP Addresses of DNS servers. Manages the DNS servers associated with a virtual network. | `list(string)` | `[]` | no |
| <a name="input_diagnostic_settings_name"></a> [diagnostic\_settings\_name](#input\_diagnostic\_settings\_name) | Specifies the name of the Diagnostic Setting | `string` | `null` | no |
| <a name="input_enable_diagnostic_setting"></a> [enable\_diagnostic\_setting](#input\_enable\_diagnostic\_setting) | Enable diagnostic setting. var.analytics\_workspace\_id must be provided | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure location | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | The name of the resource group in which to create the storage account | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(any)` | `{}` | no |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Given name to virtual network | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_server_id"></a> [dns\_server\_id](#output\_dns\_server\_id) | The virtual network DNS server ID |
| <a name="output_guid"></a> [guid](#output\_guid) | The GUID of the Virtual Network. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Virtual Network. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Virtual Network. |
| <a name="output_name_to_id_map"></a> [name\_to\_id\_map](#output\_name\_to\_id\_map) | Map of Virtual Network Name to Id |
| <a name="output_resource_group"></a> [resource\_group](#output\_resource\_group) | The name of the resource group where Virtual Network is created. |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-azurerm-network/tree/main/LICENSE)
