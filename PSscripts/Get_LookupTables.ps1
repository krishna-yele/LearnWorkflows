$pathOfFile = Get-Location
write-host "Printing path of file"
write-host $pathOfFile
#/home/runner/work/LearnWorkflows/LearnWorkflows/PSscripts/lookups/
function Get-LookupTable {
    param (
        [string]$Table,
        [string]$Query
    )
    $csvFile = Import-csv -Path "PSscripts/lookups/$Table.csv"
    #Write-Host $csvFile 

    if (!$csvFile) {
        write-host "Could not find the csv file"
        throw "Could not retrieve / find the csv file"
    } 
    return $csvFile
}

(Get-LookupTable -Table DNACONFIG ) | Where-Object{$_.Resource -eq "Storage Account v2" -and $_.SNOWRoleName -eq "monitoring contributor"}
