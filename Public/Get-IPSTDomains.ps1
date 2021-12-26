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
  [CmdletBinding(DefaultParameterSetName="Global")]
  param (
    [Parameter(ParameterSetName='Global', Mandatory=$false,Position=0)]
    [string]$Domain,
    [Parameter(ParameterSetName='DefaultDomain', Mandatory=$false,Position=0)]
    [switch]$DefaultDomain
  )
  $Resource = '/domains'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }

  switch ($PsCmdlet.ParameterSetName) {
    DefaultDomain { 
      $Params += @{
        # "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "?`$filter=isDefault eq True"
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
      }
      $Result = Invoke-GraphAPIRequest @Params
      foreach ($line in $Result) {
        if ($line.isDefault -eq $true) {
          $filtredResult = $line
        }
      }
      return $filtredResult
    }
    Default {
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
  }
}