<#
.Synopsis
   Just an Example
.DESCRIPTION
   Create a storage account in azure cloud, this is fairly simple script to learn how script work and learn about the utility of variables.
.EXAMPLE
   ./storageaccount2.ps1
#>

$test_rg = az group create `
   --location eastus2 `
   --name abcd-$(Get-Random) | ConvertFrom-Json

$test_storage_account = az storage account create `
    --resource-group $test_rg.name `
    --name testsa$(Get-Random) | ConvertFrom-Json

$test_rg
$test_storage_account