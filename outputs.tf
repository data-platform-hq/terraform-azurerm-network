output "id" {
  value       = azurerm_virtual_network.this.id
  description = "The ID of the Virtual Network."
}

output "guid" {
  value       = azurerm_virtual_network.this.guid
  description = "The GUID of the Virtual Network."
}

output "name" {
  value       = azurerm_virtual_network.this.name
  description = "The name of the Virtual Network."
}

output "resource_group" {
  value       = azurerm_virtual_network.this.resource_group_name
  description = "The name of the resource group where Virtual Network is created."
}

output "name_to_id_map" {
  value       = { (azurerm_virtual_network.this.name) = azurerm_virtual_network.this.id }
  description = "Map of Virtual Network Name to Id"
}

output "dns_server_id" {
  value       = length(var.custom_dns) == 0 ? "" : azurerm_virtual_network_dns_servers.this[0].id
  description = "The virtual network DNS server ID"
}
