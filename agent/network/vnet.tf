# Vnet > Spoke
resource "azurerm_virtual_network" "id_spoke" {
  name                = var.id_spoke_vnet.name
  location            = azurerm_resource_group.id_network.location
  resource_group_name = azurerm_resource_group.id_network.name
  address_space       = [var.id_spoke_vnet.address_space]

  # ddos_protection_plan {
  #   id     = azurerm_network_ddos_protection_plan.id_spoke.id
  #   enable = var.id_spoke_vnet.ddos_protection_plan_enable
  # }

  tags = merge(var.env_tag, var.id_spoke_vnet_tags)
}

# Vnet > Spoke > Subnet
# Vnet > Spoke > Subnet > PublicFrontend
resource "azurerm_subnet" "id_spoke_public_frontend" {
  name                                           = var.id_spoke_subnet_public_frontend.name
  resource_group_name                            = azurerm_resource_group.id_network.name
  virtual_network_name                           = azurerm_virtual_network.id_spoke.name
  address_prefixes                               = [var.id_spoke_subnet_public_frontend.address_prefixes]
  enforce_private_link_endpoint_network_policies = var.id_spoke_subnet_public_frontend.private_link
}

# Vnet > Spoke > Subnet > PrivateDatabase
resource "azurerm_subnet" "id_spoke_private_database" {
  name                                           = var.id_spoke_subnet_private_database.name
  resource_group_name                            = azurerm_resource_group.id_network.name
  virtual_network_name                           = azurerm_virtual_network.id_spoke.name
  address_prefixes                               = [var.id_spoke_subnet_private_database.address_prefixes]
  enforce_private_link_endpoint_network_policies = var.id_spoke_subnet_private_database.private_link

  service_endpoints = var.id_spoke_subnet_private_database_service_endpoints
}
 
# resource "azurerm_subnet_network_security_group_association" "id_spoke_private_database" {
#   subnet_id                 = azurerm_subnet.id_spoke_private_database.id
#   network_security_group_id = azurerm_network_security_group.id_spoke_private_database.id
# }

# Vnet > Spoke > Subnet > PrivateApplication
resource "azurerm_subnet" "id_spoke_private_application" {
  name                                           = var.id_spoke_subnet_private_application.name
  resource_group_name                            = azurerm_resource_group.id_network.name
  virtual_network_name                           = azurerm_virtual_network.id_spoke.name
  address_prefixes                               = [var.id_spoke_subnet_private_application.address_prefixes]
  enforce_private_link_endpoint_network_policies = var.id_spoke_subnet_private_application.private_link
}

# Vnet > Spoke > Subnet > PublicAgent
resource "azurerm_subnet" "id_spoke_public_agent" {
  name                 = var.id_spoke_subnet_public_agent.name
  resource_group_name  = azurerm_resource_group.id_network.name
  virtual_network_name = azurerm_virtual_network.id_spoke.name
  address_prefixes     = [var.id_spoke_subnet_public_agent.address_prefixes]
}

# resource "azurerm_subnet_network_security_group_association" "id_spoke_public_agent" {
#   subnet_id                 = azurerm_subnet.id_spoke_public_agent.id
#   network_security_group_id = azurerm_network_security_group.id_spoke_public_frontend.id
# }

# Vnet > Spoke > Subnet > PublicStd
resource "azurerm_subnet" "id_spoke_public_std" {
  name                 = var.id_spoke_subnet_public_std.name
  resource_group_name  = azurerm_resource_group.id_network.name
  virtual_network_name = azurerm_virtual_network.id_spoke.name
  address_prefixes     = [var.id_spoke_subnet_public_std.address_prefixes]
}

# resource "azurerm_subnet_network_security_group_association" "id_spoke_public_std" {
#   subnet_id                 = azurerm_subnet.id_spoke_public_std.id
#   network_security_group_id = azurerm_network_security_group.id_spoke_public_frontend.id
# }

# Vnet > Spoke > Subnet > PublicPaas
resource "azurerm_subnet" "id_spoke_public_paas" {
  name                 = var.id_spoke_subnet_public_paas.name
  resource_group_name  = azurerm_resource_group.id_network.name
  virtual_network_name = azurerm_virtual_network.id_spoke.name
  address_prefixes     = [var.id_spoke_subnet_public_paas.address_prefixes]

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}
