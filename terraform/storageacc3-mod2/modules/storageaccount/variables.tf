variable "azure_resource_name" {
    type = string
}

variable "resource_group_name"{
  type = string
}

variable "location" {
  type = string
}

variable "allow_blob_public_access" {
  default = true
}

variable "account_tier" {
  default = "Standard"
}

variable "account_replication_type" {
  default = "LRS"
}

variable "tags" {
  type = map

  default = {
    name = "superman"
    environment = "testing"
  }
}