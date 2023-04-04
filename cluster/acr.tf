# AKS > ContainerRegistry
resource "azurerm_container_registry" "id_common" {
  name                           = var.id_common_acr.name
  resource_group_name            = azurerm_resource_group.id_common.name
  location                       = azurerm_resource_group.id_common.location
  sku                            = var.id_common_acr.sku
  admin_enabled                  = var.id_common_acr.admin_enabled

  public_network_access_enabled  = var.id_common_acr.public_network_access_enabled
  network_rule_bypass_option     = var.id_common_acr.network_rule_bypass_option

  network_rule_set {
    default_action  = var.id_common_acr.network_rule_set_default_action
    virtual_network {
      action    = var.id_common_acr.network_rule_set_virtual_network
      subnet_id = data.terraform_remote_state.id_state_common_network.outputs.id_spoke_private_database_snet.id
    }
  }

  tags = merge(var.env_tag, var.id_common_acr_tags)
}

# AKS > ContainerRegistry > PrivateEndpoint
resource "azurerm_private_endpoint" "id_common_acr" {
  name                = var.id_common_acr_pe.name
  resource_group_name = azurerm_resource_group.id_common.name
  location            = azurerm_resource_group.id_common.location
  subnet_id           = data.terraform_remote_state.id_state_common_network.outputs.id_spoke_private_database_snet.id

  private_service_connection {
    name                           = var.id_common_acr_pe.private_service_connection_name
    private_connection_resource_id = azurerm_container_registry.id_common.id
    is_manual_connection           = var.id_common_acr_pe.private_service_connection_is_manual_connection
    subresource_names              = ["registry"]
  }

  private_dns_zone_group {
    name                 = data.terraform_remote_state.id_state_common_network.outputs.id_common_acr_dns_zone.name
    private_dns_zone_ids = [data.terraform_remote_state.id_state_common_network.outputs.id_common_acr_dns_zone.id]
  }

  tags = merge(var.env_tag, var.id_common_acr_pe_tags)
}
