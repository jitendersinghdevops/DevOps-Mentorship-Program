resource "azurerm_resource_group" "myfirstresourcegroupformysquad" {
  name     = "myResourceGroup"
  location = var.location
}

resource "azurerm_storage_account" "test" {
  name                     = "stofasdfasdf"
  resource_group_name      = azurerm_resource_group.myfirstresourcegroupformysquad.name
  location                 = azurerm_resource_group.myfirstresourcegroupformysquad.location
  account_tier             = var.account_tier
  account_replication_type = "GRS"
}
