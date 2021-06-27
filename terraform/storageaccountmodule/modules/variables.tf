locals {
  task_id               = "abcd"
  resource_name = "test${random_id.random-suffix.dec}${random_string.random-suffix.id}"
}

resource "random_id" "random-suffix" {
  byte_length = 1
}

resource "random_string" "random-suffix" {
  length    = 4
  lower     = true
  min_lower = 4
  number    = false
  special   = false
  upper     = false
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
  features {}
}

variable "location" {
  type  = string
}

variable "account_tier" {
  type  = string
}
