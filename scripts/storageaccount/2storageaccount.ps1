$test_rg = az group create `
    --location eastus2 `
    --name abcd-$(Get-Random) | ConvertFrom-Json

$test_storage_account = az storage account create `
    --resource-group $test_rg.name `
    --name testsa$(Get-Random) | ConvertFrom-Json

