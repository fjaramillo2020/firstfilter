# Region
id_common_region = "East US 2"

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
id_common_rg = {
  name   = "az-fj-prd-rg-common-e2-000"
}

id_common_rg_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "ResourceGroup"
}

# AKS
# AKS > ContainerRegistry
id_common_acr = {
  name                             = "azfjprdacrcommone2000"
  sku                              = "Premium"
  admin_enabled                    = false
  public_network_access_enabled    = false
  network_rule_bypass_option       = "AzureServices"
  network_rule_set_default_action  = "Allow"
  network_rule_set_virtual_network = "Allow"
}

id_common_acr_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "ContainerRegistry"
}

# AKS > ContainerRegistry > PrivateEndpoint
id_common_acr_pe = {
  name                                            = "az-fj-prd-pe-common-e2-000"
  private_service_connection_name                 = "az-fj-prd-pe-common-acr"
  private_service_connection_is_manual_connection = false
}

id_common_acr_pe_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "PrivateEndpoint"
}

# AKS > AppGateway > PIP 
id_common_pip_agw = {
  name              = "az-fj-prd-pip-common-e2-000"
  allocation_method = "Static"
  sku               = "Standard"
}

id_common_pip_agw_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "PublicIPAddress"
}

# AKS > AppGateway
id_common_agw = {
  name         = "az-fj-prd-agw-common-e2-000"
  sku_name     = "WAF_v2"
  sku_tier     = "WAF_v2"
  sku_capacity = 2
}

id_common_agw_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "ApplicationGateway"
}

# AKS > KubernetesCluster
id_common_aks = {
  name                         = "az-fj-prd-aks-common-e2-000"
  dns_prefix                   = "fjprdakscommon"
  azure_policy_enabled         = true
  http_app_routing_enabled     = false
  private_cluster_enabled      = true
  default_node_pool_name       = "fjprdaksnp1"
  default_node_pool_node_count = 3
  default_node_pool_vm_size    = "Standard_DS2_v2"
  identity_type                = "SystemAssigned"
  # log_analytics                = "/subscriptions/236425ff-daa8-40f4-baf1-dcb8bb088e31/resourcegroups/DefaultResourceGroup-EUS2/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-236425ff-daa8-40f4-baf1-dcb8bb088e31-EUS2"
}

id_common_aks_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "AKSCluster"
}
