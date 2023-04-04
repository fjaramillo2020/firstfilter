# Region
variable "id_network_region" {
  description = "id: network region"
  type        = string
}

# Tag
variable "env_tag" {
  description = "id: A mapping of environment tags"
  type        = map(any)
}

# ResourceGroup
variable "id_network_rg" {
  description = "id: network resource group parameters"
  type        = map(any)
}

variable "id_network_rg_tags" {
  description = "id: A mapping of network resoruce group tags"
  type        = map(any)
}

# Vnet
# Vnet > Spoke
variable "id_spoke_vnet" {
  description = "id: spoke vnet parameters"
  type        = map(any)
}

variable "id_spoke_vnet_tags" {
  description = "id: A mapping of spoke vnet tags"
  type        = map(any)
}

# Vnet > Spoke > Subnet
# Vnet > Spoke > Subnet > PublicFrontend
variable "id_spoke_subnet_public_frontend" {
  description = "id: spoke subnet public frontend parameters"
  type        = map(any)
}

# Vnet > Spoke > Subnet > PrivateDatabase
variable "id_spoke_subnet_private_database" {
  description = "id: spoke subnet private database parameters"
  type        = map(any)
}

variable "id_spoke_subnet_private_database_service_endpoints" {
  description = "id: A list of spoke vnet tags"
  type        = list(string)
}

# Vnet > Spoke > Subnet > PrivateApplication
variable "id_spoke_subnet_private_application" {
  description = "id: spoke subnet private application parameters"
  type        = map(any)
}

# Vnet > Spoke > Subnet > PublicAgent
variable "id_spoke_subnet_public_agent" {
  description = "id: spoke subnet public agent parameters"
  type        = map(any)
}

# Vnet > Spoke > Subnet > PublicStd
variable "id_spoke_subnet_public_std" {
  description = "id: spoke subnet public std parameters"
  type        = map(any)
}

# Vnet > Spoke > Subnet > PublicPaas
variable "id_spoke_subnet_public_paas" {
  description = "id: spoke subnet public paas parameters"
  type        = map(any)
}


# Protection
# Protection > Ddos
variable "id_spoke_ddos_common" {
  description = "id: spoke DDOS common"
  type        = map(any)
}

variable "id_spoke_ddos_common_tags" {
  description = "id: A mapping of spoke DDOS common tags"
  type        = map(any)
}

# NSG > Spoke
# NSG > Spoke > Public
variable "id_spoke_nsg_public_frontend" {
  description = "id: spoke nsg public frontend name"
  type        = map(any)
}

variable "id_spoke_nsg_public_frontend_tags" {
  description = "id: A mapping of nsg public frontend tags"
  type        = map(any)
}

variable "id_spoke_nsgsr_public_frontend_000" {
  description = "id: spoke nsgsr public frontend 000 parameters"
  type        = map(any)
}

variable "id_spoke_nsgsr_public_frontend_001" {
  description = "id: spoke nsgsr public frontend 001 parameters"
  type        = map(any)
}

variable "id_spoke_nsgsr_public_frontend_002" {
  description = "id: spoke nsgsr public frontend 002 parameters"
  type        = map(any)
}

variable "id_spoke_nsgsr_public_frontend_003" {
  description = "id: spoke nsgsr public frontend 003 parameters"
  type        = map(any)
}

variable "id_spoke_nsgsr_public_frontend_004" {
  description = "id: spoke nsgsr public frontend 004 parameters"
  type        = map(any)
}

# NSG > id > PrivateDatabase
variable "id_spoke_nsg_private_database" {
  description = "id: spoke nsg private database name"
  type        = map(any)
}

variable "id_spoke_nsg_private_database_tags" {
  description = "id: A mapping of nsg private database tags"
  type        = map(any)
}

variable "id_spoke_nsgsr_private_database_000" {
  description = "id: spoke nsgsr private database 000 parameters"
  type        = map(any)
}

# PrivateDnsZone
# PrivateDnsZone > ContainerRegistry
variable "id_common_acr_dns_zone" {
  description = "id: common acr dns zone parameters"
  type        = map(any)
}

variable "id_common_acr_dns_zone_tags" {
  description = "id: A mapping of common acr dns zone tags"
  type        = map(any)
}

variable "id_common_acr_dns_zone_vnet_link" {
  description = "id: common acr dns zone vnet link parameters"
  type        = map(any)
}

variable "id_common_acr_dns_zone_vnet_link_tags" {
  description = "id: A mapping of common acr dns zone vnet link tags"
  type        = map(any)
}

# PrivateDnsZone > Mongodb
variable "id_common_mongodb_dns_zone" {
  description = "id: common mongodb dns zone parameters"
  type        = map(any)
}

variable "id_common_mongodb_dns_zone_tags" {
  description = "id: A mapping of common mongodb dns zone tags"
  type        = map(any)
}

variable "id_common_mongodb_dns_zone_vnet_link" {
  description = "id: common mongodb dns zone vnet link parameters"
  type        = map(any)
}

variable "id_common_mongodb_dns_zone_vnet_link_tags" {
  description = "id: A mapping of common mongodb dns zone vnet link tags"
  type        = map(any)
}

# PrivateDnsZone > Redis
variable "id_common_redis_dns_zone" {
  description = "id: common redis dns zone parameters"
  type        = map(any)
}

variable "id_common_redis_dns_zone_tags" {
  description = "id: A mapping of common redis dns zone tags"
  type        = map(any)
}

variable "id_common_redis_dns_zone_vnet_link" {
  description = "id: common redis dns zone vnet link parameters"
  type        = map(any)
}

variable "id_common_redis_dns_zone_vnet_link_tags" {
  description = "id: A mapping of common redis dns zone vnet link tags"
  type        = map(any)
}

# PrivateDnsZone > StorageAccount
variable "id_common_stac_dns_zone" {
  description = "id: common storage account dns zone parameters"
  type        = map(any)
}

variable "id_common_stac_dns_zone_tags" {
  description = "id: A mapping of common storage account dns zone tags"
  type        = map(any)
}

variable "id_common_stac_dns_zone_vnet_link" {
  description = "id: common storage account dns zone vnet link parameters"
  type        = map(any)
}

variable "id_common_stac_dns_zone_vnet_link_tags" {
  description = "id: A mapping of common storage account dns zone vnet link tags"
  type        = map(any)
}

# PrivateDnsZone > FunctionApp
variable "id_common_func_dns_zone" {
  description = "id: common function app dns zone parameters"
  type        = map(any)
}

variable "id_common_func_dns_zone_tags" {
  description = "id: A mapping of common function app dns zone tags"
  type        = map(any)
}

variable "id_common_func_dns_zone_vnet_link" {
  description = "id: common function app dns zone vnet link parameters"
  type        = map(any)
}

variable "id_common_func_dns_zone_vnet_link_tags" {
  description = "id: A mapping of common function app dns zone vnet link tags"
  type        = map(any)
}

# PrivateDnsZone > ServiceBus
variable "id_common_sb_dns_zone" {
  description = "id: common service bus dns zone parameters"
  type        = map(any)
}

variable "id_common_sb_dns_zone_tags" {
  description = "id: A mapping of common service bus dns zone tags"
  type        = map(any)
}

variable "id_common_sb_dns_zone_vnet_link" {
  description = "id: common service bus dns zone vnet link parameters"
  type        = map(any)
}

variable "id_common_sb_dns_zone_vnet_link_tags" {
  description = "id: A mapping of common service bus dns zone vnet link tags"
  type        = map(any)
}

# PrivateDnsZone > Mysql
variable "id_common_mysql_dns_zone" {
  description = "id: common mysql dns zone parameters"
  type        = map(any)
}

variable "id_common_mysql_dns_zone_tags" {
  description = "id: A mapping of common mysql dns zone tags"
  type        = map(any)
}

variable "id_common_mysql_dns_zone_vnet_link" {
  description = "id: common mysql dns zone vnet link parameters"
  type        = map(any)
}

variable "id_common_mysql_dns_zone_vnet_link_tags" {
  description = "id: A mapping of common mysql dns zone vnet link tags"
  type        = map(any)
}

# PrivateDnsZone > KeyVault
variable "id_common_kv_dns_zone" {
  description = "id: common key vault dns zone parameters"
  type        = map(any)
}

variable "id_common_kv_dns_zone_tags" {
  description = "id: A mapping of common key vault dns zone tags"
  type        = map(any)
}

variable "id_common_kv_dns_zone_vnet_link" {
  description = "id: common key vault dns zone vnet link parameters"
  type        = map(any)
}

variable "id_common_kv_dns_zone_vnet_link_tags" {
  description = "id: A mapping of common key vault dns zone vnet link tags"
  type        = map(any)
}
