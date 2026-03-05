
Get-Service | Where-Object { $_.Status -ne 'Running' } | 
    Sort-Object -Property Name | 
    Format-List Name, Status, DisplayName