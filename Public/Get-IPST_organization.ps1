function Get-IPST_organization {
  <#
  .SYNOPSIS
    Get AAD Tenant info.
  .DESCRIPTION
    TODO
  .INPUTS
    None
  .OUTPUTS
    PSCustomObject[]
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPST_organization
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/intune-onboarding-organization-list?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_organization.md
  #>
  [CmdletBinding()]
  param (
    
  )
  $Resource = '/organization'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  $Params += @{
    "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}