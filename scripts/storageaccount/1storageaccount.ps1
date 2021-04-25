#this is fairly simple script to learn how script work and learn about the utility of variables.

$test_rg = az group create --location eastus2 --name testregroup

$test_sa = az storage account create --name testsgfordevopstra --resource-group testregroup --https-only "true" 


# az group list 


# to delete a resource group 
# az group delete --name $test_rg

#why we are using ConvertFrom-Json
#how to use variables

