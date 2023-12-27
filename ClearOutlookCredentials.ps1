# Clear Outlook Cached Credentials Script

# Get the Outlook profile name
$OutlookProfile = "YourOutlookProfileName"

# Path to the Credential Manager registry key for Outlook
$RegistryPath = "HKCU:\Software\Microsoft\Office\$($OutlookProfile)\Outlook\Profiles\Outlook\"

# Clear the credentials
Remove-Item -Path $RegistryPath -Recurse -Force

Write-Host "Outlook cached credentials cleared for profile: $($OutlookProfile)"
