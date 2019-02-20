param (
    [Parameter(Mandatory=$true)]
    $aksResourceGroup,
    [Parameter(Mandatory=$true)]
    $aksClusterName,
    [Parameter(Mandatory=$true)]
    $acrResourceGroup,
    [Parameter(Mandatory=$true)]
    $acrName
)
# Get the id of the service principal configured for AKS
$aksClientId = az aks show --resource-group $aksResourceGroup --name $aksClusterName --query "servicePrincipalProfile.clientId" --output tsv

# Get the ACR registry resource id
$acrId = az acr show --name $acrName --resource-group $acrResourceGroup --query "id" --output tsv

# Create role assignment
az role assignment create --assignee $aksClientId --role acrpull --scope $acrId
