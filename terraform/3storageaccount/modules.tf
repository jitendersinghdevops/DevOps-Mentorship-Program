module "resourcegroup" {
  source                = "./modules/shared"
  azurerm_resource_name = local.azurerm_resource_name
  location              = var.location
}

module "storage-account-1" {
  source                   = "./modules/storageaccount"
  azure_resource_name      = local.azurerm_resource_name
  resource_group_name      = module.resourcegroup.azurerm_resource_group
  location                 = var.location
  allow_blob_public_access = true
  account_tier             = "Standard"
  tags = {
    name = "spiderman"
  }
}

module "storage-account-2" {
  source                   = "./modules/storageaccount"
  azure_resource_name      = local.azurerm_resource_name
  resource_group_name      = module.resourcegroup.azurerm_resource_group
  location                 = var.location
  allow_blob_public_access = false
  account_tier             = "Standard"
}

