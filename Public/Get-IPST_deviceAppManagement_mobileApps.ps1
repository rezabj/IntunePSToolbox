function Get-IPST_deviceAppManagement_mobileApps {
  <#
  .SYNOPSIS
    Get Mobile Apps.
  .DESCRIPTION
    TODO
  .INPUTS
    None
  .OUTPUTS
    Object[]
  .OUTPUTS
    PSCustomObject[]
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPST_deviceAppManagement_mobileApps -Id 00000000-0000-0000-0000-000000000000
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/intune-shared-mobileapp-list?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceAppManagement_mobileApps.md
  #>
  [CmdletBinding()]
  param (
      # Specifi ID for get specific application.
      [Parameter()]
      [string]$Id
  )
  $Resource = '/deviceAppManagement/mobileApps'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($Id) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id  + "/?`$expand=assignments,categories,relationships"
    }
  } else {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource  + "/?`$expand=assignments,categories,relationships"
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}