function Connect-IPSTAsDelegated {
  param (
    [Parameter(Mandatory=$true)]
    [string]$TenantID,
    [Parameter(Mandatory=$true)]
    [string]$ClientID
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
           
  $Global:AccessToken = $AccessToken.AccessToken
  $Global:GraphApiEnv = "beta"
}

function Connect-IPSTAsApplication {
  param (
    [Parameter(Mandatory=$true)]
    [string]$TenantID,
    [Parameter(Mandatory=$true)]
    [string]$ClientID,
    [securestring]$ClientSecrit
  )
  $AccessToken = Get-MsalToken -ClientId $ClientID -TenantId $TenantID -ClientSecret $ClientSecrit
  $Global:AccessToken = $AccessToken.AccessToken
}