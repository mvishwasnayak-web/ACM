Get-ChildItem -Path "C:\Temp" -Filter *.tmp -File |
Where-Object {
    $_.LastWriteTime -lt (Get-Date).AddDays(-30)
} |
Remove-Item -Confirm
