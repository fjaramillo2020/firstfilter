# AKS > KubernetesCluster
resource "azurerm_kubernetes_cluster" "id_common" {
  name                = var.id_common_aks.name
  location            = azurerm_resource_group.id_common.location
  resource_group_name = azurerm_resource_group.id_common.name
  dns_prefix          = var.id_common_aks.dns_prefix

  azure_policy_enabled             = var.id_common_aks.azure_policy_enabled
  http_application_routing_enabled = var.id_common_aks.http_app_routing_enabled
  private_cluster_enabled          = var.id_common_aks.private_cluster_enabled

  default_node_pool {
    name       = var.id_common_aks.default_node_pool_name
    node_count = var.id_common_aks.default_node_pool_node_count
    vm_size    = var.id_common_aks.default_node_pool_vm_size
    vnet_subnet_id = data.terraform_remote_state.id_state_common_network.outputs.id_spoke_private_application_snet.id
  }

  identity {
    type = var.id_common_aks.identity_type
  }

  network_profile {
    network_plugin = "azure"
  }

  ingress_application_gateway {
    gateway_id = azurerm_application_gateway.id_common_agw.id 
  }

  role_based_access_control_enabled = true

  # microsoft_defender {
  #   log_analytics_workspace_id  = "/subscriptions/236425ff-daa8-40f4-baf1-dcb8bb088e31/resourcegroups/DefaultResourceGroup-EUS2/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-236425ff-daa8-40f4-baf1-dcb8bb088e31-EUS2"
  # }

  tags = merge(var.env_tag, var.id_common_aks_tags)
  depends_on = [azurerm_application_gateway.id_common_agw]
}

data "azurerm_user_assigned_identity" "id_common_aks_agentpool_identity" {
  name                = "${azurerm_kubernetes_cluster.id_common.name}-agentpool"
  resource_group_name = azurerm_kubernetes_cluster.id_common.node_resource_group
  depends_on          = [azurerm_kubernetes_cluster.id_common]
}

resource "azurerm_role_assignment" "id_common_acr_access" {
  role_definition_name = "AcrPull"
  scope                = azurerm_container_registry.id_common.id
  principal_id         = data.azurerm_user_assigned_identity.id_common_aks_agentpool_identity.principal_id
}
