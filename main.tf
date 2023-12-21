resource "azurerm_virtual_network" "this" {
  name                = var.vnet_name
  address_space       = var.cidr
  location            = var.location
  resource_group_name = var.resource_group
  tags                = var.tags
}

resource "azurerm_virtual_network_dns_servers" "this" {
  virtual_network_id = azurerm_virtual_network.this.id
  dns_servers        = var.custom_dns
}
