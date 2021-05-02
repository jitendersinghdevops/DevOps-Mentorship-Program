locals {
  task_id               = "abcd"
  azurerm_resource_name = "test${local.task_id}${random_id.random-suffix.dec}"
}

resource "random_id" "random-suffix" {
  byte_length = 1
}

variable "access_tier" {
  default = "Standard"
}

variable "location" {
  default = "eastus2"
}

resource "random_string" "random-suffix" {
    length = 4
    lower = true
    min_lower = 4
    number = false
    special = false
    upper = false
}

variable "enable_https_traffic_only" {
  default = false
}