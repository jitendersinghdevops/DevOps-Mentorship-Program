module "rg" {
    source = "./modules/shared"
    azurerm_resource_name = "rgtest111"
    location = "eastus2"
}

output "rg" {
  value = module.rg.resourceg
}

module "rg2" {
    source = "./modules/shared"
    azurerm_resource_name = "rgtest22"
}

output "rg2" {
  value = module.rg2.resourceg
}

module "storage-account-1" {
  source                   = "./modules/storageaccount"
  azure_resource_name      = local.azurerm_resource_name
  resource_group_name      = module.rg.resourceg
  location                 = var.location
  allow_blob_public_access = true
  account_tier             = "Standard"
  tags = {
    name = "spiderman"
  }
}

output "storageaccountname" {
  value = module.storage-account-1.azurerm_storage_account 
}


module "storage-account-1" {
  source                   = "./modules/storageaccount"
  azure_resource_name      = local.azurerm_resource_name
  resource_group_name      = module.rg.resourceg
  location                 = var.location
  allow_blob_public_access = false
  account_tier             = "Standard"
  tags = {
    name = "batman"
  }
}