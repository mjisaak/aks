param (
    [Parameter(Mandatory=$true)]
    $aksResourceGroup,
    [Parameter(Mandatory=$true)]
    $aksClusterName
)

az aks get-credentials -g $aksResourceGroup -n $aksClusterName