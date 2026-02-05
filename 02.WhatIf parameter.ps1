Get-Service |
Where-Object { $_.Status -eq 'Stopped' } |
ForEach-Object {
    Restart-Service -Name $_.Name -WhatIf
}
