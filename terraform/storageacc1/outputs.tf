output "storageaccountthatwecreated" {
  value = azurerm_storage_account.test.name
}

output "storageaccc_id" {
  value = azurerm_storage_account.test.id
}

output "rg" {
  value = azurerm_resource_group.myfirstresourcegroupformysquad.name
}

