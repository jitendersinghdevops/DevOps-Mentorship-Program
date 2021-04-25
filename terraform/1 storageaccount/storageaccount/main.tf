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

resource "azurerm_resource_group" "rg1" {
  name     = "myResourceGroup"
  location = "eastus2"
}

resource "azurerm_storage_account" "test" {
  name                     = "storageaccoun2356002"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = "eastus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}