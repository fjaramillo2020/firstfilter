data "terraform_remote_state" "id_state_common_network" {
  backend = "azurerm"

  config = {
    resource_group_name  = "az-fj-prd-rg-state-e2-000"
    storage_account_name = "azfjprdstacstatee2000"
    container_name       = "azfjprdstcostatee2000"
    key                  = "common/network/terraform.state"
  }
}
