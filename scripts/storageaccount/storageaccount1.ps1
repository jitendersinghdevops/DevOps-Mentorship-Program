<#
.Synopsis
   Just an Example
.DESCRIPTION
   Create a storage account in azure cloud, this is fairly simple script to learn how script work and learn about the utility of variables.
.EXAMPLE
   ./1storageaccount.ps1
#>




# $test_rg =  az group create --location eastus2 --name testregroup1313 

# $test_sa = az storage account create --name testsgforfjbdskjfb --resource-group testregroup1313 --https-only "true" 

$test_rg =  az group create `
         --location eastus2 `
         --name   NAVYANAVMEETSARMEkjds | ConvertFrom-Json


$test_sa = az storage account create --name  jitenderstorageajsfh --resource-group $test_rg.name 

$seeresourcegroupname = az group show --resource-group $test_rg.name




# to delete a resource group 
# az group delete --name $test_rg

#why we are using ConvertFrom-Json
#how to use variables

