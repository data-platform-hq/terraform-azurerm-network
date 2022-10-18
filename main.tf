resource "azurerm_virtual_network" "this" {
  name                = "vnet-${var.project}-${var.env}-${var.location}"
  address_space       = var.cidr
  location            = var.location
  resource_group_name = var.resource_group
  tags                = var.tags
}
