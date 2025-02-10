$resourceGroupName = "dlpm-kry025-rg" `    
echo $resourceGroupName `
# List resources in the specified resource group `
$resources = Get-AzResource -ResourceGroupName $resourceGroupName `
$resources | Format-Table `    
# Log resource list to summary `
$resources | Format-Table | Out-String | ForEach-Object { Write-Output "## $_" } >> $env:GITHUB_STEP_SUMMARY
