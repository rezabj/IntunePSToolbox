$version = New-Object System.Version(0, 0, 1, 0)
Update-ModuleManifest -Path ..\IntunePSToolbox.psd1 `
  -Author "Jan Rezab <honza@rezab.eu>" `
  -ModuleVersion $version `
  -Description "Intune Powershell Toolbox" `
  -RootModule "IntunePSToolbox.psm1" `
  -RequiredModules "MSAL.PS","AzureAD" `
  -FunctionsToExport `
    "New-IPSTAADApp", `
    "Connect-IPSTAsDelegated", `
    "Connect-IPSTAsApplication", `
    "Get-IPSTDeviceConfigurationPolicies" `
  -CmdletsToExport "" `
  -AliasesToExport "Connect-Intune" `
  -PowerShellVersion "5.0" 

Set-Location ..