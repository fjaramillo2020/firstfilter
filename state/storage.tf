resource "azurerm_storage_account" "id_state" {
  name                     = var.id_state_stac.name
  resource_group_name      = azurerm_resource_group.id_state.name
  location                 = azurerm_resource_group.id_state.location
  account_tier             = var.id_state_stac.account_tier
  account_replication_type = var.id_state_stac.account_replication_type

  tags = merge(var.env_tag, var.id_state_stac_tags)
}

resource "azurerm_storage_container" "id_state" {
  name                  = var.id_state_stco.name
  storage_account_name  = azurerm_storage_account.id_state.name
  container_access_type = var.id_state_stco.container_access_type
}
