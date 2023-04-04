# AKS > AG
resource "azurerm_application_gateway" "id_common_agw" {
  name                = var.id_common_agw.name
  resource_group_name = azurerm_resource_group.id_common.name
  location            = azurerm_resource_group.id_common.location

  sku {
    name     = var.id_common_agw.sku_name
    tier     = var.id_common_agw.sku_tier
    capacity = var.id_common_agw.sku_capacity
  }

  gateway_ip_configuration {
    name      = "az-fj-prd-agw-common-ipconf-e2-000"
    subnet_id = data.terraform_remote_state.id_state_common_network.outputs.id_spoke_public_frontend_snet.id
  }

  frontend_port {
    name = local.frontend_port_name
    port = 80
  }

  frontend_port {
    name = "httpsPort"
    port = 443
  }

  frontend_ip_configuration {
    name                 = local.frontend_ip_configuration_name
    public_ip_address_id = azurerm_public_ip.id_common_agw.id
  }

  backend_address_pool {
    name = local.backend_address_pool_name
  }

  backend_http_settings {
    name                  = local.http_setting_name
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 1
  }

  http_listener {
    name                           = local.listener_name
    frontend_ip_configuration_name = local.frontend_ip_configuration_name
    frontend_port_name             = local.frontend_port_name
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = local.request_routing_rule_name
    rule_type                  = "Basic"
    http_listener_name         = local.listener_name
    backend_address_pool_name  = local.backend_address_pool_name
    backend_http_settings_name = local.http_setting_name
  }

  waf_configuration {
    enabled          = true
    firewall_mode    = "Detection"
    rule_set_type    = "OWASP"
    rule_set_version = "3.0"
  }

  tags = merge(var.env_tag, var.id_common_agw_tags)

  depends_on = [azurerm_public_ip.id_common_agw]
}
