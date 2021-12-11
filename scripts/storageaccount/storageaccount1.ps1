<#
.Synopsis
   Just an Example
.DESCRIPTION
   Create a storage account in azure cloud, this is fairly simple script to learn how script work and learn about the utility of variables.
.EXAMPLE
   ./1storageaccount.ps1
#>

# $test_rg = az group create --location eastus2 --name testregroup 

# $test_sa = az storage account create --name testsgfordevopstra --resource-group testregroup --https-only "true" 


$test_rg = az group create --location eastus2 --name testregroup  | ConvertFrom-Json

$test_sa = az storage account create --name testdsdfds --resource-group $test_rg.name --https-only "true" | ConvertFrom-Json


# to delete a resource group 
# az group delete --name $test_rg

#why we are using ConvertFrom-Json
#how to use variables

