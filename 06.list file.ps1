Get-ChildItem "C:\Data" -Verbose |
    Select-Object Name, Length |
    Format-Table -AutoSize
