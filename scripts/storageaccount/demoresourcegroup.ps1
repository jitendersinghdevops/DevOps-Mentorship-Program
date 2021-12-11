az group create --name "dmprg"

az group list --query []   

az group list --query [].name    

az group list --query "[].{name:name}"

az group list --query "[].{name:name, location:location}"

az group list --query "[].{RGN:name, location:location}"

az group list --query "[?name=='dmprg']"

az group list --query "[?name=='dmprg'].name"