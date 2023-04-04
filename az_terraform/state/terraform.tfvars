# Region
id_state_region   = "East US 2"

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
id_state_rg = {
  name   = "az-fj-prd-rg-state-e2-000"
}

id_state_rg_tags = {
  "Backup"           = "No"
  "Centro de costos" = "Pendiente"
  "Región"           = "East-US-2"
  "Recurso"          = "ResourceGroup"
}

# StorageAccount
id_state_stac = {
  name                     = "azfjprdstacstatee2000"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

id_state_stac_tags = {
  "Backup"       = "No"
  "CentroCostos" = "RemoteState"
  "Region"       = "East-US-2"
  "Recurso"      = "StorageAccount"
}

# StorageContainer
id_state_stco = {
  name                  = "azfjprdstcostatee2000"
  container_access_type = "private"
}
