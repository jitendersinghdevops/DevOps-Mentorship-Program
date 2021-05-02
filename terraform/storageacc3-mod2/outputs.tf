output "resource_group" {
  value = module.resourcegroup.azurerm_resource_group
}

output "storage_account_allow_public_access" {
  value = module.storage-account-1
}

output "storage_account_not_allowed_public_access" {
  value = module.storage-account-2
}