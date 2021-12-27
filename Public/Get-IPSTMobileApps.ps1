function Get-IPSTMobileApps {
  <#
  .SYNOPSIS
    Get Mobile Apps.
  .DESCRIPTION
    
  .PARAMETER AppID
    Specifi AppID for get specific application.
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPSTMobileApps -AppID 00000000-0000-0000-0000-000000000000
  #>
  [CmdletBinding()]
  param (
      [Parameter()]
      [string]$AppId
  )
  $Resource = '/deviceAppManagement/mobileApps'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($AppId) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $AppId  + "/?`$expand=assignments,categories,relationships"
    }
  } else {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource  + "/?`$expand=assignments,categories,relationships"
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}