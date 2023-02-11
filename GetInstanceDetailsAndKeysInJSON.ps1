Connect-AzAccount
Set-AzContext -Subscription "<SubscriptionName>"

## Retrieving a VM instance metdata using its name
$instanceDetails = Get-AzVM -ResourceGroupName "<ResourceGroupName>" -Name "<VMName>"

## Get instance details in JSON format using ConvertTo-JSON cmdlet
$instanceDetailsinJson = $instanceDetails | ConvertTo-Json

## Query/Retrive any Key and Value by Converting the JSON to PSCustomObject
$data = $instanceDetailsinJson | ConvertFrom-Json

## Example: Retreive Values for Specific required Keys - "ResourceGroupName,Type,VmId" of instance
$data.ResourceGroupName
$data.Type
$data.VmId




