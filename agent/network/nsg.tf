# NSG
# NSG > Spoke
# NSG > Spoke > Public
resource "azurerm_network_security_group" "id_spoke_public_frontend" {
  location            = azurerm_resource_group.id_network.location
  name                = var.id_spoke_nsg_public_frontend.name
  resource_group_name = azurerm_resource_group.id_network.name

  tags = merge(var.env_tag, var.id_spoke_nsg_public_frontend_tags)
}

resource "azurerm_network_security_rule" "id_spoke_public_000" {
  name                        = var.id_spoke_nsgsr_public_frontend_000.name
  priority                    = var.id_spoke_nsgsr_public_frontend_000.priority
  direction                   = var.id_spoke_nsgsr_public_frontend_000.direction
  access                      = var.id_spoke_nsgsr_public_frontend_000.access
  protocol                    = var.id_spoke_nsgsr_public_frontend_000.protocol
  source_port_range           = var.id_spoke_nsgsr_public_frontend_000.source_port_range
  destination_port_range      = var.id_spoke_nsgsr_public_frontend_000.destination_port_range
  source_address_prefix       = var.id_spoke_nsgsr_public_frontend_000.source_address_prefix
  destination_address_prefix  = var.id_spoke_nsgsr_public_frontend_000.destination_address_prefix
  resource_group_name         = azurerm_resource_group.id_network.name
  network_security_group_name = azurerm_network_security_group.id_spoke_public_frontend.name
}

resource "azurerm_network_security_rule" "id_spoke_public_001" {
  name                        = var.id_spoke_nsgsr_public_frontend_001.name
  priority                    = var.id_spoke_nsgsr_public_frontend_001.priority
  direction                   = var.id_spoke_nsgsr_public_frontend_001.direction
  access                      = var.id_spoke_nsgsr_public_frontend_001.access
  protocol                    = var.id_spoke_nsgsr_public_frontend_001.protocol
  source_port_range           = var.id_spoke_nsgsr_public_frontend_001.source_port_range
  destination_port_range      = var.id_spoke_nsgsr_public_frontend_001.destination_port_range
  source_address_prefix       = var.id_spoke_nsgsr_public_frontend_001.source_address_prefix
  destination_address_prefix  = var.id_spoke_nsgsr_public_frontend_001.destination_address_prefix
  resource_group_name         = azurerm_resource_group.id_network.name
  network_security_group_name = azurerm_network_security_group.id_spoke_public_frontend.name
}

resource "azurerm_network_security_rule" "id_spoke_public_002" {
  name                        = var.id_spoke_nsgsr_public_frontend_002.name
  priority                    = var.id_spoke_nsgsr_public_frontend_002.priority
  direction                   = var.id_spoke_nsgsr_public_frontend_002.direction
  access                      = var.id_spoke_nsgsr_public_frontend_002.access
  protocol                    = var.id_spoke_nsgsr_public_frontend_002.protocol
  source_port_range           = var.id_spoke_nsgsr_public_frontend_002.source_port_range
  destination_port_range      = var.id_spoke_nsgsr_public_frontend_002.destination_port_range
  source_address_prefix       = var.id_spoke_nsgsr_public_frontend_002.source_address_prefix
  destination_address_prefix  = var.id_spoke_nsgsr_public_frontend_002.destination_address_prefix
  resource_group_name         = azurerm_resource_group.id_network.name
  network_security_group_name = azurerm_network_security_group.id_spoke_public_frontend.name
}

resource "azurerm_network_security_rule" "id_spoke_public_003" {
  name                        = var.id_spoke_nsgsr_public_frontend_003.name
  priority                    = var.id_spoke_nsgsr_public_frontend_003.priority
  direction                   = var.id_spoke_nsgsr_public_frontend_003.direction
  access                      = var.id_spoke_nsgsr_public_frontend_003.access
  protocol                    = var.id_spoke_nsgsr_public_frontend_003.protocol
  source_port_range           = var.id_spoke_nsgsr_public_frontend_003.source_port_range
  destination_port_range      = var.id_spoke_nsgsr_public_frontend_003.destination_port_range
  source_address_prefix       = var.id_spoke_nsgsr_public_frontend_003.source_address_prefix
  destination_address_prefix  = var.id_spoke_nsgsr_public_frontend_003.destination_address_prefix
  resource_group_name         = azurerm_resource_group.id_network.name
  network_security_group_name = azurerm_network_security_group.id_spoke_public_frontend.name
}

resource "azurerm_network_security_rule" "id_spoke_public_004" {
  name                        = var.id_spoke_nsgsr_public_frontend_004.name
  priority                    = var.id_spoke_nsgsr_public_frontend_004.priority
  direction                   = var.id_spoke_nsgsr_public_frontend_004.direction
  access                      = var.id_spoke_nsgsr_public_frontend_004.access
  protocol                    = var.id_spoke_nsgsr_public_frontend_004.protocol
  source_port_range           = var.id_spoke_nsgsr_public_frontend_004.source_port_range
  destination_port_range      = var.id_spoke_nsgsr_public_frontend_004.destination_port_range
  source_address_prefix       = var.id_spoke_nsgsr_public_frontend_004.source_address_prefix
  destination_address_prefix  = var.id_spoke_nsgsr_public_frontend_004.destination_address_prefix
  resource_group_name         = azurerm_resource_group.id_network.name
  network_security_group_name = azurerm_network_security_group.id_spoke_public_frontend.name
}

# NSG > Spoke > PrivateDatabase
resource "azurerm_network_security_group" "id_spoke_private_database" {
  location            = azurerm_resource_group.id_network.location
  name                = var.id_spoke_nsg_private_database.name
  resource_group_name = azurerm_resource_group.id_network.name

  tags = merge(var.env_tag, var.id_spoke_nsg_private_database_tags)
}

resource "azurerm_network_security_rule" "id_spoke_private_database_000" {
  name                        = var.id_spoke_nsgsr_private_database_000.name
  priority                    = var.id_spoke_nsgsr_private_database_000.priority
  direction                   = var.id_spoke_nsgsr_private_database_000.direction
  access                      = var.id_spoke_nsgsr_private_database_000.access
  protocol                    = var.id_spoke_nsgsr_private_database_000.protocol
  source_port_range           = var.id_spoke_nsgsr_private_database_000.source_port_range
  destination_port_range      = var.id_spoke_nsgsr_private_database_000.destination_port_range
  source_address_prefix       = var.id_spoke_nsgsr_private_database_000.source_address_prefix
  destination_address_prefix  = var.id_spoke_nsgsr_private_database_000.destination_address_prefix
  resource_group_name         = azurerm_resource_group.id_network.name
  network_security_group_name = azurerm_network_security_group.id_spoke_private_database.name
}
