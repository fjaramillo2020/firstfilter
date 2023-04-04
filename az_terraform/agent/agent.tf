# Agent
# Agent > AzDevOps
# Agent > AzDevOps > NIC
resource "azurerm_network_interface" "id_common_agent" {
  name                = var.id_common_agent_nic.name
  resource_group_name = data.terraform_remote_state.id_state_common_cluster.outputs.id_common_rg.name 
  location            = data.terraform_remote_state.id_state_common_cluster.outputs.id_common_rg.location

  ip_configuration {
    name                          = var.id_common_agent_nic.ip_config_name
    subnet_id                     = data.terraform_remote_state.id_state_common_network.outputs.id_spoke_public_std_snet.id
    private_ip_address_allocation = var.id_common_agent_nic.ip_config_private_allocation
    public_ip_address_id          = azurerm_public_ip.id_common_agent.id
  }

  tags = merge(var.env_tag, var.id_common_agent_nic_tags)
}

# Agent > AzDevOps > VM
resource "azurerm_virtual_machine" "id_common_agent" {
  name                  = var.id_common_agent_vm.name
  resource_group_name   = data.terraform_remote_state.id_state_common_cluster.outputs.id_common_rg.name 
  location              = data.terraform_remote_state.id_state_common_cluster.outputs.id_common_rg.location
  network_interface_ids = [azurerm_network_interface.id_common_agent.id]
  vm_size               = var.id_common_agent_vm.vm_size

  delete_os_disk_on_termination    = var.id_common_agent_vm.delete_os_disk_on_termination
  delete_data_disks_on_termination = var.id_common_agent_vm.delete_data_disks_on_termination

  storage_image_reference {
    publisher = var.id_common_agent_vm.storage_image_publisher
    offer     = var.id_common_agent_vm.storage_image_offer
    sku       = var.id_common_agent_vm.storage_image_sku
    version   = var.id_common_agent_vm.storage_image_version
  }

  storage_os_disk {
    name              = var.id_common_agent_vm.storage_os_name
    caching           = var.id_common_agent_vm.storage_os_caching
    create_option     = var.id_common_agent_vm.storage_os_create_option
    managed_disk_type = var.id_common_agent_vm.storage_os_managed_disk_type
  }

  identity {
    type = "SystemAssigned"
  }

  os_profile {
    computer_name  = "idprdagent"
    admin_username = "idprdcommon"
  }

  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
      key_data = file("../resource/key/id_rsa.pub")
      path     = "/home/idprdcommon/.ssh/authorized_keys"
    }
  }

  tags = merge(var.env_tag, var.id_common_agent_vm_tags)
}
