# AzDevOps > Agent > PIP 
resource "azurerm_public_ip" "id_common_agent" {
 name                = var.id_common_pip_agent.name
 resource_group_name = data.terraform_remote_state.id_state_common_cluster.outputs.id_common_rg.name 
 location            = data.terraform_remote_state.id_state_common_cluster.outputs.id_common_rg.location
 allocation_method   = var.id_common_pip_agent.allocation_method
 sku                 = var.id_common_pip_agent.sku

 tags = merge(var.env_tag, var.id_common_pip_agent_tags)
}
