#this is fairly simple script to learn how script work and learn about the utility of variables.

$test_rg = az group create --location eastus2 --name testregroup

$test_sa = az storage account create --name testsgfordevopstra --resource-group $test_rg --https-only "true" 


# to delete a resource group 
# az group delete --name $test_rg
