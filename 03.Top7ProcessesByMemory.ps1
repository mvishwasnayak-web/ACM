Get-Process |
Sort-Object WorkingSet -Descending |
Select-Object -First 7 Name, Id,
@{
    Name = "Memory (MB)"
    Expression = { [math]::Round($_.WorkingSet / 1MB, 2) }
} |
Format-Table -AutoSize
