function Get-IPST_Applications {
  <#
  .SYNOPSIS
    Get AAD domains.
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
    PS> Get-IPST_Applications
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/application-list?view=graph-rest-beta&tabs=http
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_Applications.md
  #>
  [CmdletBinding(DefaultParameterSetName="Global")]
  param (
    [Parameter(ParameterSetName='Global', Mandatory=$false,Position=0)]
    [string]$Id
  )
  $Resource = '/applications'
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
      $Result = Invoke-GraphAPIRequest @Params
      return $Result
    }
  }
}