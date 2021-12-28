function Get-IPST_Groups {
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
    PS> Get-IPST_Domains -GroupID 00000000-0000-0000-0000-000000000000
  #>
  [CmdletBinding(DefaultParameterSetName="Global")]
  param (
    [Parameter(ParameterSetName='Members',          Mandatory=$false,Position=0)][switch]$Members,
    [Parameter(ParameterSetName='transitiveMembers',Mandatory=$false,Position=0)][switch]$transitiveMembers,

    [Parameter(ParameterSetName='Global',           Mandatory=$false,Position=1)]
    [Parameter(ParameterSetName='Members',          Mandatory=$true, Position=2)]
    [Parameter(ParameterSetName='transitiveMembers',Mandatory=$true, Position=2)]
    [string]$GroupId
  )
  $Resource = '/groups'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  
  switch ($PsCmdlet.ParameterSetName) {
    Members {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $GroupId + "/Members"
      }
      break
    }
    transitiveMembers {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $GroupId + "/transitiveMembers"
      }
      break
    }
    Default {
      if ($GroupId) {
        $Params += @{
          "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $GroupId
        }
      } else {
        $Params += @{
          "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
        }
      }
      break
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}