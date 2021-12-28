function Get-IPST_Domains {
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
    PS> Get-IPST_Domains
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/domain?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_Domains.md
  #>
  [CmdletBinding(DefaultParameterSetName="Global")]
  param (
    # Domain name (e.g. contoso.com).
    [Parameter(ParameterSetName='Global', Mandatory=$false,Position=0)]
    [string]$Domain,
    # Return default domain.
    [Parameter(ParameterSetName='isDefault', Mandatory=$false,Position=0)]
    [switch]$isDefault
  )
  $Resource = '/domains'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }

  switch ($PsCmdlet.ParameterSetName) {
    isDefault { 
      $Params += @{
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