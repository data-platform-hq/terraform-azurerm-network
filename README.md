# Azure Virtual Network Terraform module
Terraform module for creation Azure Virtual Network

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                      | Version   |
| ------------------------------------------------------------------------- | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0  |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm)       | >= 3.40.0 |

## Providers

| Name                                                          | Version   |
| ------------------------------------------------------------- | --------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.40.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                                    | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network)                         | resource |
| [azurerm_virtual_network_dns_servers.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_dns_servers) | resource |

## Inputs

| Name                                                                           | Description                                                                                     | Type           | Default | Required |
|--------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------| -------------- | ------- | :------: |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name)                   | Given name to virtual network                                                                   | `string`       | n/a     |   yes    |
| <a name="input_cidr"></a> [cidr](#input\_cidr)                                 | The address space that is used the virtual network. You can supply more than one address space. | `list(string)` | n/a     |   yes    |
| <a name="input_location"></a> [location](#input\_location)                     | Azure location                                                                                  | `string`       | n/a     |   yes    |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | The name of the resource group in which to create the storage account                           | `string`       | n/a     |   yes    |
| <a name="input_tags"></a> [tags](#input\_tags)                                 | A mapping of tags to assign to the resource                                                     | `map(any)`     | `{}`    |    no    |
| <a name="input_custom_dns"></a> [custom\_dns](#input\_custom\_dns)             | List of IP Addresses of DNS servers. Manages the DNS servers associated with a virtual network. | `list(string)` | `[]`    |    no    |

## Outputs

| Name                                                                       | Description                            |
| -------------------------------------------------------------------------- | -------------------------------------- |
| <a name="output_id"></a> [id](#output\_id)                                 | The ID of the Virtual Network.         |
| <a name="output_guid"></a> [guid](#output\_guid)                           | The GUID of the Virtual Network.       |
| <a name="output_name"></a> [name](#output\_name)                           | The name of the Virtual Network.       |
| <a name="output_name"></a> [resource\_group](#output\_resource\_group)     | The name of the resource group in which to create the virtual network.|
| <a name="output_name"></a> [name\_to\_id\_map](#output\_name\_to\_id\_map) | Map of Virtual Network name to its ID. |
| <a name="output_name"></a> [custom\_dns](#output\_dns\_server\_id)         | The virtual network DNS server ID      |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-azurerm-network/tree/main/LICENSE)
