# Region
variable "id_common_region" {
  description = "id: common region"
  type        = string
}

# Tag
variable "env_tag" {
  description = "id: A mapping of environment tags"
  type        = map(any)
}

# ResourceGroup
variable "id_common_rg" {
  description = "id: common resource group parameters"
  type        = map(any)
}

variable "id_common_rg_tags" {
  description = "id: A mapping of common resource group tags"
  type        = map(any)
}

# AKS
# AKS > ContainerRegistry
variable "id_common_acr" {
  description = "id: common acr parameters"
  type        = map(any)
}

variable "id_common_acr_tags" {
  description = "id: A mapping of common acr tags"
  type        = map(any)
}

# AKS > ContainerRegistry > PrivateEndpoint
variable "id_common_acr_pe" {
  description = "id: common acr private endpoint parameters"
  type        = map(any)
}

variable "id_common_acr_pe_tags" {
  description = "id: A mapping of common acr private endpoint tags"
  type        = map(any)
}

# AKS > AppGateway > PIP 
variable "id_common_pip_agw" {
  description = "id: common pip to Application Gateway parameters"
  type        = map(any)
}

variable "id_common_pip_agw_tags" {
  description = "id: A mapping of common pip to Application Gateway tags"
  type        = map(any)
}

# AKS > AppGateway
variable "id_common_agw" {
  description = "id: common application gateway to AKS parameters"
  type        = map(any)
}

variable "id_common_agw_tags" {
  description = "id: A mapping of common application gateway to AKS tags"
  type        = map(any)
}

# AKS > KubernetesCluster
variable "id_common_aks" {
 description = "id: common AKS parameters"
 type        = map(any)
}

variable "id_common_aks_tags" {
  description = "id: A mapping of common AKS tags"
  type        = map(any)
}
