resource "azurerm_virtual_network" "this" {
  name                = "vnet-${var.project}-${var.env}-${var.location}"
  address_space       = var.cidr
  location            = var.location
  resource_group_name = var.resource_group
  tags                = var.tags
}

resource "azurerm_virtual_network_dns_servers" "this" {
  count = length(var.custom_dns) == 0 ? 0 : 1

  virtual_network_id = azurerm_virtual_network.this.id
  dns_servers        = var.custom_dns
}
