function Get-IPST_DirectoryObjects {
  <#
  .SYNOPSIS
    Get AAD object
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
    PS> Get-IPST_DirectoryObjects -Id 00000000-0000-0000-0000-000000000000
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/directoryobject-get?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_DirectoryObjects.md
  #>
  [CmdletBinding(DefaultParameterSetName="Global")]
  param (
    [Parameter(ParameterSetName='Global',Mandatory=$true,Position=0)]
    [string]$Id
  )
  $Resource = '/directoryObjects'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  
  switch ($PsCmdlet.ParameterSetName) {
    Default {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id
      }
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}