# Tag
variable "env_tag" {
  description = "id: A mapping of environment tags"
  type        = map(any)
}

# AKS > Agent > PIP 
variable "id_common_pip_agent" {
  description = "id: common pip to AzureDevOps Agent parameters"
  type        = map(any)
}

variable "id_common_pip_agent_tags" {
  description = "id: A mapping of common pip to AzureDevOps Agent tags"
  type        = map(any)
}

# AzDevOps > Agent > NIC
variable "id_common_agent_nic" {
  description = "id: common network interface to AzureDevOps Agent parameters"
  type        = map(any)
}

variable "id_common_agent_nic_tags" {
  description = "id: A mapping of common network interface to AzureDevOps Agent tags"
  type        = map(any)
}

# AzDevOps > Agent > VM
variable "id_common_agent_vm" {
  description = "id: common virtual machine to AzureDevOps Agent parameters"
  type        = map(any)
}

variable "id_common_agent_vm_tags" {
  description = "id: A mapping of common virtual machine to AzureDevOps Agent Agent tags"
  type        = map(any)
}
