resource "azurerm_resource_group" "sai_rg" {
  name     = "example-resources"
  location = var.location
}

variable "location" {
  type = string
}

variable "account_tier" {
  type = string
}


resource "azurerm_storage_account" "sai_storage" {
  name                     = "storageaccountsai"
  resource_group_name      = azurerm_resource_group.sai_rg.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = "GRS"
  allow_blob_public_access = "false"

  tags = {
    environment = "staging"
  }
}

output "location" {
  value = azurerm_resource_group.sai_rg.location
}

output "Storage_id" {
  value = azurerm_storage_account.sai_storage.id
}