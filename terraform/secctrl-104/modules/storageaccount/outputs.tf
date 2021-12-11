output "azurerm_storage_account" {
  value = azurerm_storage_account.sg1.id
}

output "allow_blob_public_access"{
  value = azurerm_storage_account.sg1.allow_blob_public_access
}