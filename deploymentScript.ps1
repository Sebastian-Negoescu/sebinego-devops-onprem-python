# Azure DevOps
# @Sebi N.
# The template to be used when deploying the Application using the ARM Template & ARM Template Parameters Files
# Irrelevant for now... But will use it with future progress.

Login-AzureRmAccount

$rgName = "SN-DevOps"
Write-Host "The Resource Group to be used: {$rgName}. " -BackgroundColor Black -ForegroundColor Green


Write-Host "Checking the Resource Group part... " -BackgroundColor Black -ForegroundColor Green
New-AzureRmResourceGroup -Location "West Europe" -Name $rgName -Confirm:$false -Force

Write-Host "Testing the RM Resource Group Deployment for Template & Parameters validation..." -BackgroundColor Black -ForegroundColor Green
New-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile ".\ArmTemplates\webapp-template.json" -TemplateParameterFile ".\ArmTemplates\webapp-template-parameters.json"

Write-Host "You reached the end of the script. " -BackgroundColor Black -ForegroundColor Green
Write-Host "Have a good day, lad! " -BackgroundColor Black -ForegroundColor Green