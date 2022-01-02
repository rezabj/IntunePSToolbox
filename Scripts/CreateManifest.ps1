$version = New-Object System.Version(0, 0, 2, 1)
$functions = Get-Item -Path ..\Public\*.ps1
$functionlist = @()
foreach ($function in $functions) {
  $Lenght = $function.name.Length - 4
  $functionlist += $function.name.substring(0,$Lenght)
}
$RequiredModules   = @(
  @{
    ModuleName = "MSAL.PS";
    ModuleVersion = "4.36.1.2";
    Guid = "c765c957-c730-4520-9c36-6a522e35d60b";
  }
  @{
    ModuleName = "AzureAD";
    ModuleVersion = "2.0.2.130";
    Guid = "d60c0004-962d-4dfb-8d28-5707572ffd00";
  }
)
$PrivateData = @{
    Tags = @("Intune","Graph","PowerShell")
    LicenseUri = 'https://github.com/rezabj/IntunePSToolbox/blob/main/LICENSE'
    ProjectUri = 'https://github.com/rezabj/IntunePSToolbox'
    ReleaseNotes = 'https://github.com/rezabj/IntunePSToolbox/releases'
}
Update-ModuleManifest -Path ..\IntunePSToolbox.psd1 `
  -Author "Jan Rezab <honza@rezab.eu>" `
  -ModuleVersion $version `
  -Description "Intune Powershell Toolbox is set of functions to manage Microsoft Intune via Graph API." `
  -RootModule "IntunePSToolbox.psm1" `
  -RequiredModules $RequiredModules `
  -FunctionsToExport $functionlist `
  -CmdletsToExport "" `
  -AliasesToExport "Connect-Intune" `
  -PowerShellVersion "5.0" `
  -ProjectUri "https://github.com/rezabj/IntunePSToolbox" `
  -HelpInfoUri "https://github.com/rezabj/IntunePSToolbox/Docs" `
  -PrivateData $PrivateData