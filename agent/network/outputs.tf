# Vnet
# Vnet > Spoke
output "id_spoke_vnet" {
  description = "id: spoke id vnet"
  value       = {
    id   = azurerm_virtual_network.id_spoke.id
    name = azurerm_virtual_network.id_spoke.name
  }
}

# Subnet
# Subnet > Spoke > PublicFrontend
output "id_spoke_public_frontend_snet" {
  description = "id: spoke id public frontend"
  value       = {
    id = azurerm_subnet.id_spoke_public_frontend.id
  }
}

# Subnet > Spoke > PrivateDatabase
output "id_spoke_private_database_snet" {
  description = "id: spoke id private database"
  value       = {
    id = azurerm_subnet.id_spoke_private_database.id
  }
}

# Subnet > Spoke > PrivateApplication
output "id_spoke_private_application_snet" {
  description = "id: spoke id private application"
  value       = {
    id = azurerm_subnet.id_spoke_private_application.id
  }
}

# Subnet > Spoke > PublicAgent
output "id_spoke_public_agent_snet" {
  description = "id: spoke id frontend agent"
  value       = {
    id = azurerm_subnet.id_spoke_public_agent.id
  }
}

# Subnet > Spoke > PublicStd
output "id_spoke_public_std_snet" {
  description = "id: spoke id frontend std"
  value       = {
    id = azurerm_subnet.id_spoke_public_std.id
  }
}

# Subnet > Spoke > PublicPaas
output "id_spoke_public_paas_snet" {
  description = "id: spoke id frontend paas"
  value       = {
    id = azurerm_subnet.id_spoke_public_paas.id
  }
}


# PrivateDnsZone
# PrivateDnsZone > ContainerRegistry
output "id_common_acr_dns_zone" {
  description = "id: common acr dns zone"
  value       = {
    name = azurerm_private_dns_zone.id_common_acr.name
    id   = azurerm_private_dns_zone.id_common_acr.id
  }
}

# PrivateDnsZone > Mongodb
output "id_common_mongodb_dns_zone" {
  description = "id: common mongodb dns zone"
  value       = {
    name = azurerm_private_dns_zone.id_common_mongodb.name
    id   = azurerm_private_dns_zone.id_common_mongodb.id
  }
}

# PrivateDnsZone > Redis
output "id_common_redis_dns_zone" {
  description = "id: common redis dns zone"
  value       = {
    name = azurerm_private_dns_zone.id_common_redis.name
    id   = azurerm_private_dns_zone.id_common_redis.id
  }
}

# PrivateDnsZone > StorageAccount
output "id_common_stac_dns_zone" {
  description = "id: common storage account dns zone"
  value       = {
    name = azurerm_private_dns_zone.id_common_stac.name
    id   = azurerm_private_dns_zone.id_common_stac.id
  }
}

# PrivateDnsZone > FunctionApp
output "id_common_func_dns_zone" {
  description = "id: common function app dns zone"
  value       = {
    name = azurerm_private_dns_zone.id_common_func.name
    id   = azurerm_private_dns_zone.id_common_func.id
  }
}

# PrivateDnsZone > ServiceBus
output "id_common_sb_dns_zone" {
  description = "id: common service bus dns zone"
  value       = {
    name = azurerm_private_dns_zone.id_common_sb.name
    id   = azurerm_private_dns_zone.id_common_sb.id
  }
}

# PrivateDnsZone > Mysql
output "id_common_mysql_dns_zone" {
  description = "id: common mysql dns zone"
  value       = {
    name = azurerm_private_dns_zone.id_common_mysql.name
    id   = azurerm_private_dns_zone.id_common_mysql.id
  }
}

# PrivateDnsZone > KeyVault
output "id_common_kv_dns_zone" {
  description = "id: common kv dns zone"
  value       = {
    name = azurerm_private_dns_zone.id_common_kv.name
    id   = azurerm_private_dns_zone.id_common_kv.id
  }
}
