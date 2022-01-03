variable "azure_resource_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "allow_blob_public_access" {
  default = true
  type = bool
}

variable "account_tier" {
  default = "Standard"
}

variable "account_replication_type" {
  default = "LRS"
}

variable "tags" {
  type = map(any)

  default = {
    name        = "superman"
    environment = "testing"
  }
}