resource "azurerm_resource_group" "rg1" {
  name     = var.azurerm_resource_name
  location = var.location
}