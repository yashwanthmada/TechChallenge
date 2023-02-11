### Connect to Azure Account using user creds having contributor/owner or SPN or managed identity
### and set context to required subscription
Connect-AzAccount
Set-AzContext -Subscription $subscriptionid

### Create a resource group in an azure location to deploy the ARM Template
New-AzResourceGroup -Name "<ResourceGroupName>" -Location "CentralUS"

New-AzResourceGroupDeployment -name "ARMTemplateProvision" `
-ResourceGroupName "<ResourceGroupName>" -TemplateFile "<Provision.json file location>" `
-TemplateParameterFile "Provision-parameter.json file location" -DeploymentDebugLogLevel All -Verbose -ErrorAction Stop -Debug
