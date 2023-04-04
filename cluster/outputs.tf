# ResourceGroup
output "id_common_rg" {
  description = "id: common resource group"
  value       = {
    name      = azurerm_resource_group.id_common.name
    location  = azurerm_resource_group.id_common.location
  }
}
