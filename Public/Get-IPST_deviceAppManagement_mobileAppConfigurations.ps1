function Get-IPST_deviceAppManagement_mobileAppConfigurations {
  <#
  .SYNOPSIS
    Get mobile app configuration
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
    PS> Get-IPST_deviceAppManagement_mobileAppConfigurations -Id 00000000-0000-0000-0000-000000000000
  .LINK
    MS Docs: https://docs.microsoft.com/cs-cz/graph/api/intune-apps-androidforworkmobileappconfiguration-list?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceAppManagement_mobileAppConfigurations.md
  #>
  [CmdletBinding(DefaultParameterSetName='Global')]
  param (
    # Specifi Id.
    [Parameter(ParameterSetName='Global',Mandatory=$false,Position=0)]
    [string]$Id
  )
  $Resource = '/deviceAppManagement/mobileAppConfigurations'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }

  switch ($PsCmdlet.ParameterSetName) {
    Default {
      if ($Id) {
        $Params += @{
          "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/?`$expand=assignments"
        }
      } else {
        $Params += @{
          "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/?`$expand=assignments"
        }
      }
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  $DecryptedResult = @()
  foreach ($line in $Result) {
    if ($line.payloadJson) {
      $Base64 = $line.payloadJson
      $line.payloadJson = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($Base64))
    }
    $DecryptedResult += $line
  }
  $Result = $DecryptedResult
  return $Result
}