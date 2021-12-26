function Get-IPSTTenant {
  <#
  .SYNOPSIS
    Get AAD Tenant info.
  .DESCRIPTION
    TODO
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPSTTenant
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