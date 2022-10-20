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

output "name_to_id_map" {
  value       = { (azurerm_virtual_network.this.name) = azurerm_virtual_network.this.id }
  description = "Map of Virtual Network Name to Id"
}
