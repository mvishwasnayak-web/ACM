
Get-Process | 
    Select-Object Name, Id, @{Name="Memory(MB)";Expression={[math]::Round($_.WorkingSet64 / 1MB, 2)}} | 
    Sort-Object -Property "Memory(MB)" -Descending | 
    Select-Object -First 7 | 
    Format-Table -AutoSize