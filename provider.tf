terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "satrg"
    storage_account_name = "storage552"
    container_name       = "cont1"
    key                  = "re.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e8ad8a11-5e89-4545-9309-27ed1a0cd62f"
}

