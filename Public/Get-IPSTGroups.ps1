function Get-IPSTGroups {
  <#
  .SYNOPSIS
    Get AAD groups
  .DESCRIPTION
    
  .PARAMETER DeviceID
    Specify GroupID for get one.
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPSTGroups -GroupID 00000000-0000-0000-0000-000000000000
  #>
  [CmdletBinding()]
  param (
      [Parameter()]
      [string]$GroupId
  )
  $Resource = '/groups'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($GroupId) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $DeviceId
    }
  } else {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}