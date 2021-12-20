function Connect-IPSTAsDelegated {
  <#
  .SYNOPSIS
    Connect to AAD application "Intune PS Toolbox"
  .DESCRIPTION
    Before you use this function create Azure AD Application. You can use function New-IPSTAADApp for create new one. Be sure that you have appropriate permission for create Azure AD App.
  .PARAMETER TenantID
    Tenant ID.
  .PARAMETER ClientID
    Azure App (Client) ID.
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Connect-IPSTAsDelegated -TenantID 00000000-0000-0000-0000-000000000000 -ClientID 00000000-0000-0000-0000-000000000000
  #>

  param (
    [Parameter(Mandatory=$true, Position=0)]
    [string]$TenantID,
    [Parameter(Mandatory=$true, Position=1)]
    [string]$ClientID,
    [ValidateSet("beta","1.0")]
    [Parameter(Mandatory=$false, Position=2)]
    [string]$Endpoint
  )
  # https://docs.microsoft.com/en-us/graph/permissions-reference#intune-device-management-permissions
  $AccessToken = Get-MsalToken -ClientId $ClientID -TenantId $TenantID -Interactive `
   -Scopes 'https://graph.microsoft.com/User.Read.All', `
           'https://graph.microsoft.com/Directory.Read.All', `
           'https://graph.microsoft.com/DeviceManagementApps.Read.All', `
           'https://graph.microsoft.com/DeviceManagementConfiguration.Read.All', `
           'https://graph.microsoft.com/DeviceManagementManagedDevices.Read.All', `
           'https://graph.microsoft.com/DeviceManagementRBAC.Read.All', `
           'https://graph.microsoft.com/DeviceManagementServiceConfig.Read.All'  
  $Global:IPSTAccessToken = $AccessToken.AccessToken
  if ($Endpoint -eq "1.0") {
    $Global:IPSTGraphApiEnv = "1.0"
  } else {
    $Global:IPSTGraphApiEnv = "beta"
  }
  
}