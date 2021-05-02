terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "firstresourcegroup" {
  name     = "myResourceGroup"
  location = "eastus2"
}

resource "azurerm_storage_account" "test" {
  name                     = "storageaccoun23121565641"
  resource_group_name      = azurerm_resource_group.firstresourcegroup.name
  location                 = "eastus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

