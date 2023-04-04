# # Protection
# # Protection > Ddos
# resource "azurerm_network_ddos_protection_plan" "id_spoke" {
#   name                = var.id_spoke_ddos_common.name
#   location            = azurerm_resource_group.id_network.location
#   resource_group_name = azurerm_resource_group.id_network.name

#   tags = merge(var.env_tag, var.id_spoke_ddos_common_tags)
# }
