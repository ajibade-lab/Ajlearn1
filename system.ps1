# This script displays basic system information

# Display a welcome message
Write-Host "=== System Information ===" -ForegroundColor Cyan

# Show the computer name
Write-Host "Computer Name:" $env:COMPUTERNAME

# Show the current user
Write-Host "User:" $env:USERNAME

# Show the current date and time
Write-Host "Date and Time:" (Get-Date)

# Show the operating system version
Write-Host "OS Version:" (Get-CimInstance Win32_OperatingSystem).Caption

# Show the system uptime
$uptime = (Get-Date) - (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
Write-Host "Uptime:" $uptime.Days "days," $uptime.Hours "hours," $uptime.Minutes "minutes"

