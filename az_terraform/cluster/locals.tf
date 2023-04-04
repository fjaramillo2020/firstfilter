# AKS > AG
locals {
  backend_address_pool_name      = "${data.terraform_remote_state.id_state_common_network.outputs.id_spoke_vnet.name}-beap"
  frontend_port_name             = "${data.terraform_remote_state.id_state_common_network.outputs.id_spoke_vnet.name}-feport"
  frontend_ip_configuration_name = "${data.terraform_remote_state.id_state_common_network.outputs.id_spoke_vnet.name}-feip"
  http_setting_name              = "${data.terraform_remote_state.id_state_common_network.outputs.id_spoke_vnet.name}-be-htst"
  listener_name                  = "${data.terraform_remote_state.id_state_common_network.outputs.id_spoke_vnet.name}-httplstn"
  request_routing_rule_name      = "${data.terraform_remote_state.id_state_common_network.outputs.id_spoke_vnet.name}-rqrt"
}
