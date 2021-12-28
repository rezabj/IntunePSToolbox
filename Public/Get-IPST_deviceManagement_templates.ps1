function Get-IPST_deviceManagement_templates {
  <#
  .SYNOPSIS
    Get security baselines.
  .DESCRIPTION
    
  .PARAMETER Id
    Specifi AppID for get specific application.
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPST_deviceManagement_templates -Id 00000000-0000-0000-0000-000000000000
  #>
  [CmdletBinding(DefaultParameterSetName='Global')]
  param (
    [Parameter(ParameterSetName='Global',Mandatory=$false,Position=0)]
    [string]$Id
  )
  $Resource = '/deviceManagement/templates'
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