# PrivateDnsZone > ContainerRegistry
resource "azurerm_private_dns_zone" "id_common_acr" {
  name                = var.id_common_acr_dns_zone.name
  resource_group_name = azurerm_resource_group.id_network.name

  tags = var.id_common_acr_dns_zone_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "id_common_acr" {
  name                  = var.id_common_acr_dns_zone_vnet_link.name
  resource_group_name   = azurerm_resource_group.id_network.name
  private_dns_zone_name = azurerm_private_dns_zone.id_common_acr.name
  virtual_network_id    = azurerm_virtual_network.id_spoke.id

  tags = var.id_common_acr_dns_zone_vnet_link_tags
}

# PrivateDnsZone > Mongodb
resource "azurerm_private_dns_zone" "id_common_mongodb" {
  name                = var.id_common_mongodb_dns_zone.name
  resource_group_name = azurerm_resource_group.id_network.name

  tags = var.id_common_mongodb_dns_zone_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "id_common_mongodb" {
  name                  = var.id_common_mongodb_dns_zone_vnet_link.name
  resource_group_name   = azurerm_resource_group.id_network.name
  private_dns_zone_name = azurerm_private_dns_zone.id_common_mongodb.name
  virtual_network_id    = azurerm_virtual_network.id_spoke.id

  tags = var.id_common_mongodb_dns_zone_vnet_link_tags
}

# PrivateDnsZone > Redis
resource "azurerm_private_dns_zone" "id_common_redis" {
  name                = var.id_common_redis_dns_zone.name
  resource_group_name = azurerm_resource_group.id_network.name

  tags = var.id_common_redis_dns_zone_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "id_common_redis" {
  name                  = var.id_common_redis_dns_zone_vnet_link.name
  resource_group_name   = azurerm_resource_group.id_network.name
  private_dns_zone_name = azurerm_private_dns_zone.id_common_redis.name
  virtual_network_id    = azurerm_virtual_network.id_spoke.id

  tags = var.id_common_redis_dns_zone_vnet_link_tags
}

# PrivateDnsZone > StorageAccount
resource "azurerm_private_dns_zone" "id_common_stac" {
  name                = var.id_common_stac_dns_zone.name
  resource_group_name = azurerm_resource_group.id_network.name

  tags = var.id_common_stac_dns_zone_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "id_common_stac" {
  name                  = var.id_common_stac_dns_zone_vnet_link.name
  resource_group_name   = azurerm_resource_group.id_network.name
  private_dns_zone_name = azurerm_private_dns_zone.id_common_stac.name
  virtual_network_id    = azurerm_virtual_network.id_spoke.id

  tags = var.id_common_stac_dns_zone_vnet_link_tags
}

# PrivateDnsZone > FunctionApp
resource "azurerm_private_dns_zone" "id_common_func" {
  name                = var.id_common_func_dns_zone.name
  resource_group_name = azurerm_resource_group.id_network.name

  tags = var.id_common_func_dns_zone_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "id_common_func" {
  name                  = var.id_common_func_dns_zone_vnet_link.name
  resource_group_name   = azurerm_resource_group.id_network.name
  private_dns_zone_name = azurerm_private_dns_zone.id_common_func.name
  virtual_network_id    = azurerm_virtual_network.id_spoke.id

  tags = var.id_common_func_dns_zone_vnet_link_tags
}

# PrivateDnsZone > ServiceBus
resource "azurerm_private_dns_zone" "id_common_sb" {
  name                = var.id_common_sb_dns_zone.name
  resource_group_name = azurerm_resource_group.id_network.name

  tags = var.id_common_sb_dns_zone_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "id_common_sb" {
  name                  = var.id_common_sb_dns_zone_vnet_link.name
  resource_group_name   = azurerm_resource_group.id_network.name
  private_dns_zone_name = azurerm_private_dns_zone.id_common_sb.name
  virtual_network_id    = azurerm_virtual_network.id_spoke.id

  tags = var.id_common_sb_dns_zone_vnet_link_tags
}

# PrivateDnsZone > Mysql
resource "azurerm_private_dns_zone" "id_common_mysql" {
  name                = var.id_common_mysql_dns_zone.name
  resource_group_name = azurerm_resource_group.id_network.name

  tags = var.id_common_mysql_dns_zone_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "id_common_mysql" {
  name                  = var.id_common_mysql_dns_zone_vnet_link.name
  resource_group_name   = azurerm_resource_group.id_network.name
  private_dns_zone_name = azurerm_private_dns_zone.id_common_mysql.name
  virtual_network_id    = azurerm_virtual_network.id_spoke.id

  tags = var.id_common_mysql_dns_zone_vnet_link_tags
}

# PrivateDnsZone > KeyVault
resource "azurerm_private_dns_zone" "id_common_kv" {
  name                = var.id_common_kv_dns_zone.name
  resource_group_name = azurerm_resource_group.id_network.name

  tags = var.id_common_kv_dns_zone_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "id_common_kv" {
  name                  = var.id_common_kv_dns_zone_vnet_link.name
  resource_group_name   = azurerm_resource_group.id_network.name
  private_dns_zone_name = azurerm_private_dns_zone.id_common_kv.name
  virtual_network_id    = azurerm_virtual_network.id_spoke.id

  tags = var.id_common_kv_dns_zone_vnet_link_tags
}
