function New-IPSTAADApp {
    <#
  .SYNOPSIS
    Create new Azure AD Apps for Intune PS Toolbox.
  .DESCRIPTION
    TODO
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> New-IPSTAADApp -AppLogin $True
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/New-IPSTAADApp.md
  #>
  param (
    # Specify if you use Delegated or App login.
    [Parameter(Mandatory=$true)]
    [bool]$AppLogin
  )
  $TenantInfo = Connect-AzureAD
  $AppName = "Intune PS Toolbox"
  $App = New-AzureADApplication -DisplayName $AppName -ReplyUrls "https://login.microsoftonline.com/common/oauth2/nativeclient" -PublicClient $true
  New-AzureADServicePrincipal -AppId $App.AppId
  $m = "App " + $AppName + " created!"
  Write-Output $m
  $m = "TenantID: " + $TenantInfo.TenantId
  Write-Output $m
  $m = "ClientID: " + $App.AppId
  Write-Output $m
  if ($AppLogin -eq $true) {
    $startDate = Get-Date
    $endDate = $startDate.AddYears(1)
    $AppSecret = New-AzureADApplicationPasswordCredential -ObjectId $App.ObjectId -CustomKeyIdentifier "Secret01" -StartDate $startDate -EndDate $endDate
    return $AppSecret
    $m = "App secret is: " + $AppSecret.Value
    Write-Output $m
  }
}