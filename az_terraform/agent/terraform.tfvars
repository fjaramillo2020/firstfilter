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

# AzDevOps
# AzDevOps > Agent
# AzDevOps > Agent > PIP
id_common_pip_agent = {
  name              = "az-fj-prd-pip-common-e2-001"
  allocation_method = "Static"
  sku               = "Standard"
}

id_common_pip_agent_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "PublicIPAddress"
}

# AzDevOps > Agent > NIC
id_common_agent_nic = {
  name                         = "az-fj-prd-nic-common-e2-000"
  ip_config_name               = "fj_agent_ip_conf"
  ip_config_private_allocation = "Dynamic"
}

id_common_agent_nic_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "NetworkInterface"
}

# AzDevOps > Agent > VM
id_common_agent_vm = {
  name                             = "az-fj-prd-vm-common-e2-000"
  vm_size                          = "Standard_DS11_v2"
  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true
  storage_image_publisher          = "Canonical"
  storage_image_offer              = "UbuntuServer"
  storage_image_sku                = "18.04-LTS"
  storage_image_version            = "latest"
  storage_os_name                  = "azfjprdstvmcommone2000"
  storage_os_caching               = "ReadWrite"
  storage_os_create_option         = "FromImage"
  storage_os_managed_disk_type     = "Standard_LRS"  
}

id_common_agent_vm_tags = {
  "Backup"           = "No"
  "CentroCostos"     = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "VirtualMachine"
}
