function Get-Info {
    param($ComputerName)
    Get-WmiObject -ComputerName $ComputerName -Class Win32_BIOS
}
Function Get-Hello {
    Write-Host "Hello from my Azure DevOps Services Package."
}

