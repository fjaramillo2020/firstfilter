# AKS > AppGateway > PIP 
resource "azurerm_public_ip" "id_common_agw" {
 name                = var.id_common_pip_agw.name
 resource_group_name = azurerm_resource_group.id_common.name
 location            = azurerm_resource_group.id_common.location
 allocation_method   = var.id_common_pip_agw.allocation_method
 sku                 = var.id_common_pip_agw.sku

 tags = merge(var.env_tag, var.id_common_pip_agw_tags)
}
