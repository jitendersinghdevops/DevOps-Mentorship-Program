resource "azurerm_resource_group" "rg1" {
  name     = "local.azure_resource_name"
  location = var.location
}

resource "azurerm_storage_account" "sa1" {
  name                     = local.azurerm_resource_name
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = var.location
  account_tier             = var.access_tier
  account_replication_type = "GRS"
}
