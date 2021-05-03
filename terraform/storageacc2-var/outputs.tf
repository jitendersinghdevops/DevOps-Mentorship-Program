output "resource_group_name" {
  value = azurerm_resource_group.rg1.name
}

output "storage_account_name" {
  value = azurerm_storage_account.sa1.account_tier
}