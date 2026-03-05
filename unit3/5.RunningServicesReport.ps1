
Get-Service | Select-Object Name, DisplayName, Status | 
    Export-Csv -Path "RunningServicesReport.csv" -NoTypeInformation