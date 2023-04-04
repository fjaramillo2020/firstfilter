terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.5.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "az-fj-prd-rg-state-e2-000"
    storage_account_name = "azfjprdstacstatee2000"
    container_name       = "azfjprdstcostatee2000"
    key                  = "common/cluster/terraform.state"
  }

  required_version = ">= 1.0.0"
}

provider "azurerm" {
  subscription_id = "236425ff-daa8-40f4-baf1-dcb8bb088e31"
  features {}
}

# ResourceGroup
resource "azurerm_resource_group" "id_common" {
  name     = var.id_common_rg.name
  location = var.id_common_region

  tags = merge(var.env_tag, var.id_common_rg_tags)
}
