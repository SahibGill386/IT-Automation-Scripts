<#
.SYNOPSIS
Retrieves basic system information for troubleshooting.

.DESCRIPTION
This script pulls the Hostname, Operating System, and current IPv4 address 
to speed up the initial helpdesk ticketing process.
#>

Clear-Host
Write-Host "Gathering System Information..." -ForegroundColor Cyan
Write-Host "-------------------------------"

# Get Computer Name
$ComputerName = $env:COMPUTERNAME

# Get Operating System Info
$OSInfo = Get-CimInstance -ClassName Win32_OperatingSystem
$OSVersion = $OSInfo.Caption

# Get IPv4 Address
$IPInfo = Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notmatch "Loopback" }
$IPAddress = $IPInfo.IPAddress[0]

# Display Output
Write-Host "Hostname:    $ComputerName"
Write-Host "OS Version:  $OSVersion"
Write-Host "IP Address:  $IPAddress"
Write-Host "-------------------------------"
Write-Host "Data collection complete." -ForegroundColor Green
