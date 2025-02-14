function Get-LookupTable {
    param (
        [string]$Table,
        [string]$Query
    )
    $csvFile = Import-csv -Path "lookups\$Table.csv"
    #Write-Host $csvFile 

    if (!$csvFile) {
        write-host "Could not find the csv file"
        throw "Could not retrieve / find the csv file"
    } 
    return $csvFile
}

Get-LookupTable -Table DNACONFIG 
