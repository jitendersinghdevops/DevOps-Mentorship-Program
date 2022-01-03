resource "azurerm_storage_account" "sg1" {
  name                     = "${var.azure_resource_name}${var.allow_blob_public_access}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  allow_blob_public_access = var.allow_blob_public_access
  tags                     = var.tags
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}



