$resourceGroupName = "dlpm-kry025-rg" 
echo $resourceGroupName

Get-AzADGroup -ObjectId "c80687b4-2468-436b-8db5-d4b531e95024"
# List resources in the specified resource group 
$resources = Get-AzResource -ResourceGroupName $resourceGroupName 
$resources | Format-Table 
# Log resource list to summary 
$resources | Format-Table | Out-String | ForEach-Object { Write-Output "## $_" } >> $env:GITHUB_STEP_SUMMARY
