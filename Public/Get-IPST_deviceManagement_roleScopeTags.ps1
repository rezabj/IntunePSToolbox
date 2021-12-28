function Get-IPST_deviceManagement_roleScopeTags {
  <#
  .SYNOPSIS
    Get Scopes tags
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
    PS> Get-IPST_deviceManagement_roleScopeTags -Id 00000000-0000-0000-0000-000000000000
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/intune-rbac-rolescopetag-list?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_roleScopeTags.md
  #>
  [CmdletBinding(DefaultParameterSetName='Global')] 
  param (
    [Parameter(ParameterSetName='Global',Mandatory=$false,Position=0)]
    [string]$Id
  )
  $Resource = '/deviceManagement/roleScopeTags'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }

  switch ($PsCmdlet.ParameterSetName) {
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
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}