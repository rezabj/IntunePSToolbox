$version = New-Object System.Version(0, 0, 1, 0)
$functions = Get-Item -Path ..\Public\*.ps1
$functionlist = @()
foreach ($function in $functions) {
  $Lenght = $function.name.Length - 4
  $functionlist += $function.name.substring(0,$Lenght)
}
Update-ModuleManifest -Path ..\IntunePSToolbox.psd1 `
  -Author "Jan Rezab <honza@rezab.eu>" `
  -ModuleVersion $version `
  -Description "Intune Powershell Toolbox" `
  -RootModule "IntunePSToolbox.psm1" `
  -RequiredModules "MSAL.PS","AzureAD" `
  -FunctionsToExport $functionlist `
  -CmdletsToExport "" `
  -AliasesToExport "Connect-Intune" `
  -PowerShellVersion "5.0" `
  -ProjectUri "https://github.com/rezabj/IntunePSToolbox" `
  -HelpInfoUri "https://github.com/rezabj/IntunePSToolbox/Docs"

Set-Location ..