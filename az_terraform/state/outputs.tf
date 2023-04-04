# ResourceGroup
output "id_state_rg" {
  description = "id: state resource group"
  value       = {
    name      = azurerm_resource_group.id_state.name
    location  = azurerm_resource_group.id_state.location
  }
}
