# Region
variable "id_state_region" {
  description = "id: state region"
  type        = string
}

# Tag
variable "env_tag" {
  description = "id: A mapping of environment tags"
  type        = map(any)
}

# ResourceGroup
variable "id_state_rg" {
  description = "id: state resource group parameters"
  type        = map(any)
}

variable "id_state_rg_tags" {
  description = "id: A mapping of state resoruce group tags"
  type        = map(any)
}

# StorageAccount
variable "id_state_stac" {
  description = "id: state storage account parameters"
  type        = map(any)
}

variable "id_state_stac_tags" {
  description = "id: A mapping of state storage account tags"
  type        = map(any)
}

# StorageContainer
variable "id_state_stco" {
  description = "id: state storage container parameters"
  type        = map(any)
}
