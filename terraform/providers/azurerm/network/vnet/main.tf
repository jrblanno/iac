resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  address_space       = var.address_space
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
}

resource "azurerm_subnet" "snet" {
  for_each             = var.subnet_map
  name                 = each.value.name
  resource_group_name  = azurerm_virtual_network.vnet.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [cidrsubnet(tolist(azurerm_virtual_network.vnet.address_space[0]), 8, 0)]
}