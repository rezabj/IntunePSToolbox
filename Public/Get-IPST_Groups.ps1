function Get-IPST_Groups {
  <#
  .SYNOPSIS
    Get AAD groups
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
    PS> Get-IPST_Domains -GroupID 00000000-0000-0000-0000-000000000000
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/group?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_Groups.md
  #>
  [CmdletBinding(DefaultParameterSetName="Global")]
  param (
    # https://docs.microsoft.com/en-us/graph/api/group-list-members?view=graph-rest-beta&tabs=http
    [Parameter(ParameterSetName='Members',          Mandatory=$false,Position=0)][switch]$Members,
    # https://docs.microsoft.com/en-us/graph/api/group-list-transitivemembers?view=graph-rest-beta&tabs=http
    [Parameter(ParameterSetName='TransitiveMembers',Mandatory=$false,Position=0)][switch]$TransitiveMembers,

    [Parameter(ParameterSetName='Global',           Mandatory=$false,Position=1)]
    [Parameter(ParameterSetName='Members',          Mandatory=$true, Position=2)]
    [Parameter(ParameterSetName='TransitiveMembers',Mandatory=$true, Position=2)]
    [string]$Id
  )
  $Resource = '/groups'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  
  switch ($PsCmdlet.ParameterSetName) {
    Members {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/Members"
      }
      break
    }
    transitiveMembers {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/transitiveMembers"
      }
      break
    }
    Default {
      if ($Id) {
        $Params += @{
          "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id
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