# for testing environment
module "storageaccountmodule" {
    source = "./modules"
    location = "eastus2"
    account_tier = "Standard"
}

output "rglocation" {
    value = module.storageaccountmodule.storageaccountlocation
}

output "resource_group_name" {
    value = module.storageaccountmodule.resourcegroupname.name
}