function Get-IPSTDomains {
  <#
  .SYNOPSIS
    Get AAD domains.
  .DESCRIPTION
    TODO
  .PARAMETER Domain
    Domain name (e.g. contoso.com).
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
    [Parameter()]
    [string]$Domain
    
  )
  $Resource = '/domains'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($Domain) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Domain
    }
  } else {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}