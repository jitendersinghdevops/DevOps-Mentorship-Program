resource "azurerm_resource_group" "myfirstresourcegroupformysquad" {
  name     = local.resource_name
  location = var.location
}

resource "azurerm_storage_account" "test" {
  name                     = local.resource_name
  resource_group_name      = azurerm_resource_group.myfirstresourcegroupformysquad.name
  location                 = azurerm_resource_group.myfirstresourcegroupformysquad.location
  account_tier             = var.account_tier
  account_replication_type = "GRS"
}

output "storageaccountlocation" {
    value = azurerm_resource_group.myfirstresourcegroupformysquad.location
}

output "resourcegroupname"{
    value = azurerm_resource_group.myfirstresourcegroupformysquad
}
 






