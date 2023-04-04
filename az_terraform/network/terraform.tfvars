# Region
id_network_region = "East US 2"

# Tag
env_tag = {
  "Empresa"          = "ABC"
  "Unidad"           = "Networking"
  "Proyecto"         = "Digital"
  "Ambiente"         = "Production"
  "Confidencialidad" = "Bajo"
  "Impacto"          = "Bajo"
  "Owner"            = "NFJG"
}

# ResourceGroup
id_network_rg = {
  name   = "az-fj-prd-rg-networking-000"
}

id_network_rg_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "ResourceGroup"
}

# Vnet
# Vnet > Spoke
id_spoke_vnet = {
  name                        = "az-fj-prd-vnet-000"
  address_space               = "10.14.40.0/21"
  ddos_protection_plan_enable = true
}

id_spoke_vnet_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "Vnet"
}

# Vnet > Spoke > Subnet
# Vnet > Spoke > Subnet > PublicFrontend
id_spoke_subnet_public_frontend = {
  name             = "az-fj-prd-snet-frontend-000"
  address_prefixes = "10.14.44.0/25"
  private_link     = true
}

# Vnet > Spoke > Subnet > PrivateDatabase
id_spoke_subnet_private_database = {
  name             = "az-fj-prd-snet-data-000"
  address_prefixes = "10.14.44.128/25"
  private_link     = true
}

id_spoke_subnet_private_database_service_endpoints = [
  "Microsoft.AzureCosmosDB", 
  "Microsoft.ContainerRegistry",
  "Microsoft.KeyVault",
  "Microsoft.Storage", 
  "Microsoft.Sql",
  "Microsoft.Web"
]

# Vnet > Spoke > Subnet > PrivateApplication
id_spoke_subnet_private_application = {
  name             = "az-fj-prd-snet-aks-000"
  address_prefixes = "10.14.40.0/22"
  private_link     = true
}

# Vnet > Spoke > Subnet > PublicAgent
id_spoke_subnet_public_agent = {
  name             = "az-fj-prd-snet-agent-000"
  address_prefixes = "10.14.45.0/25"
}

# Vnet > Spoke > Subnet > PublicStd
id_spoke_subnet_public_std = {
  name             = "az-fj-prd-snet-std-000"
  address_prefixes = "10.14.46.0/28"
}

# Vnet > Spoke > Subnet > PublicPaas
id_spoke_subnet_public_paas = {
  name             = "az-fj-prd-snet-paas-000"
  address_prefixes = "10.14.46.16/28"
}


# Protection
# Protection > Ddos
id_spoke_ddos_common = {
  name = "az-fj-prd-ddos-common-e2-000"
}

id_spoke_ddos_common_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "Ddos"
}

# NSG
# NSG > Spoke
# NSG > Spoke > Public
id_spoke_nsg_public_frontend = {
  name = "az-fj-prd-nsg-frontend-e2-000"
}

id_spoke_nsg_public_frontend_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "NSG"
}

id_spoke_nsgsr_public_frontend_000 = {
  name                       = "az-fj-prd-nsgsr-frontend-e2-000"
  priority                   = 1000
  direction                  ="Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "80"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
}

id_spoke_nsgsr_public_frontend_001 = {
  name                       = "az-fj-prd-nsgsr-frontend-e2-001"
  priority                   = 1200
  direction                  ="Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "443"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
}

id_spoke_nsgsr_public_frontend_002 = {
  name                       = "az-fj-prd-nsgsr-frontend-e2-002"
  priority                   = 1400
  direction                  ="Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "6380"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
}

id_spoke_nsgsr_public_frontend_003 = {
  name                       = "az-fj-prd-nsgsr-frontend-e2-003"
  priority                   = 100
  direction                  ="Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "65200-65535"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
}

id_spoke_nsgsr_public_frontend_004 = {
  name                       = "az-fj-prd-nsgsr-frontend-e2-004"
  priority                   = 1500
  direction                  ="Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "22"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
}

# NSG > Spoke > PrivateDatabase
id_spoke_nsg_private_database = {
  name = "az-fj-prd-nsg-database-e2-000"
}

id_spoke_nsg_private_database_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "NSG"
}

id_spoke_nsgsr_private_database_000 = {
  name                       = "az-fj-prd-nsgsr-database-e2-000"
  priority                   = 1000
  direction                  ="Outbound"
  access                     = "Deny"
  protocol                   = "*"
  source_port_range          = "*"
  destination_port_range     = "*"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
}

# PrivateDnsZone
# PrivateDnsZone > ContainerRegistry
id_common_acr_dns_zone = {
  name = "privatelink.azurecr.io"
}

id_common_acr_dns_zone_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZone"
}

id_common_acr_dns_zone_vnet_link = {
  name = "az-fj-prd-dnsz-vnet-spoke-e2-000"
}

id_common_acr_dns_zone_vnet_link_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZoneVnetLink"
}

# PrivateDnsZone > Mongodb
id_common_mongodb_dns_zone = {
  name = "privatelink.mongo.cosmos.azure.com"
}

id_common_mongodb_dns_zone_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZone"
}

id_common_mongodb_dns_zone_vnet_link = {
  name = "az-fj-prd-dnsz-vnet-spoke-e2-001"
}

id_common_mongodb_dns_zone_vnet_link_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZoneVnetLink"
}

# PrivateDnsZone > Redis
id_common_redis_dns_zone = {
  name = "privatelink.redis.cache.windows.net"
}

id_common_redis_dns_zone_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZone"
}

id_common_redis_dns_zone_vnet_link = {
  name = "az-fj-prd-dnsz-vnet-spoke-e2-002"
}

id_common_redis_dns_zone_vnet_link_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZoneVnetLink"
}

# PrivateDnsZone > StorageAccount
id_common_stac_dns_zone = {
  name = "privatelink.blob.core.windows.net"
}

id_common_stac_dns_zone_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZone"
}

id_common_stac_dns_zone_vnet_link = {
  name = "az-fj-prd-dnsz-vnet-spoke-e2-003"
}

id_common_stac_dns_zone_vnet_link_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZoneVnetLink"
}

# PrivateDnsZone > FunctionApp
id_common_func_dns_zone = {
  name = "privatelink.azurewebsites.net"
}

id_common_func_dns_zone_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZone"
}

id_common_func_dns_zone_vnet_link = {
  name = "az-fj-prd-dnsz-vnet-spoke-e2-004"
}

id_common_func_dns_zone_vnet_link_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZoneVnetLink"
}

# PrivateDnsZone > ServiceBus
id_common_sb_dns_zone = {
  name = "privatelink.servicebus.windows.net"
}

id_common_sb_dns_zone_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZone"
}

id_common_sb_dns_zone_vnet_link = {
  name = "az-fj-prd-dnsz-vnet-spoke-e2-004"
}

id_common_sb_dns_zone_vnet_link_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZoneVnetLink"
}

# PrivateDnsZone > Mysql
id_common_mysql_dns_zone = {
  name = "privatelink.mysql.database.azure.com"
}

id_common_mysql_dns_zone_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZone"
}

id_common_mysql_dns_zone_vnet_link = {
  name = "az-fj-prd-dnsz-vnet-spoke-e2-005"
}

id_common_mysql_dns_zone_vnet_link_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZoneVnetLink"
}

# PrivateDnsZone > KeyVault
id_common_kv_dns_zone = {
  name = "privatelink.vaultcore.azure.net"
}

id_common_kv_dns_zone_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZone"
}

id_common_kv_dns_zone_vnet_link = {
  name = "az-fj-qa-dnsz-vnet-spoke-e2-006"
}

id_common_kv_dns_zone_vnet_link_tags = {
  "Ambiente"            = "Producción"
  "Confidencialidad"    = "Bajo"
  "Backup"              = "No"
  "Recurso"             = "PrivateDNSZoneVnetLink"
}
