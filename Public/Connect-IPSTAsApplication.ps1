function Connect-IPSTAsApplication {
  <#
  .SYNOPSIS
    Connect to AAD application "Intune PS Toolbox"
  .DESCRIPTION
    Before you use this function create Azure AD Application. You can use function New-IPSTAADApp for create new one. Be sure that you have appropriate permission for create Azure AD App.
  .PARAMETER TenantID
    Tenant ID.
  .PARAMETER ClientID
    Azure App (Client) ID.
  .PARAMETER Secret
    App secret
  .PARAMETER Endpoint
    Grahp API environment - beta or 1.0
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Connect-IPSTAsApplication -TenantID 00000000-0000-0000-0000-000000000000 -ClientID 00000000-0000-0000-0000-000000000000 -Secret XXXXXXXX
  #>

  param (
    [Parameter(Mandatory=$true)]
    [string]$TenantID,
    [Parameter(Mandatory=$true)]
    [string]$ClientID,
    [Parameter(Mandatory=$true)]
    [securestring]$Secret,
    [ValidateSet("beta","1.0")]
    [Parameter(Mandatory=$false, Position=2)]
    [string]$Endpoint
  )
  # https://docs.microsoft.com/en-us/graph/permissions-reference#intune-device-management-permissions
  $AccessToken = Get-MsalToken -ClientId $ClientID -TenantId $TenantID -ClientSecret $Secret
  $Global:IPSTAccessToken = $AccessToken.AccessToken
  if ($Endpoint -eq "1.0") {
    $Global:IPSTGraphApiEnv = "1.0"
  } else {
    $Global:IPSTGraphApiEnv = "beta"
  }
}