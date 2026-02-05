Get-Service |
Where-Object { $_.Status -eq "Running" } |
Select-Object Name, DisplayName, Status |
Export-Csv "C:\RunningServicesReport.csv" -NoTypeInformation
