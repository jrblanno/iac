# output of the vnet id
output "id" {
  value = azurerm_virtual_network.vnet.id
}
# output of the vnet name
output "name" {
  value = azurerm_virtual_network.vnet.name
}
# output of the vnet resource group name
output "resource_group_name" {
  value = azurerm_virtual_network.vnet.resource_group_name
}
# output of all the subnet ids
# output "subnet_ids" {
#   value = {
#     for subnet_name, subnet_config in azurerm_subnet.snet : subnet_name => subnet_config.id
#   }
# }