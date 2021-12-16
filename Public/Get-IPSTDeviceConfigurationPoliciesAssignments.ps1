function Get-IPSTDeviceConfigurationPoliciesAssignments {
  <#
    .SYNOPSIS
      Get device configuration assignments.
    .DESCRIPTION
    
    .PARAMETER DeviceConfigurationId
      Specifi Device Configuration ID for get assignment information.
    .INPUTS
      None
    .OUTPUTS
      None
    .NOTES
      Author:         Jan Řežab
      GitHub:         https://github.com/rezabj/IntunePSToolbox
      Blog:           https://www.rezab.eu
    .EXAMPLE
      PS> Get-IPSTDeviceConfigurationPoliciesAssignments -DeviceConfigurationId 00000000-0000-0000-0000-000000000000
  #>
  [CmdletBinding()]
  param (
      [Parameter(Mandatory=$true)]
      [string]$DeviceConfigurationId
  )
  $Resource = '/deviceManagement/deviceConfigurations'
  $Params = @{
    "AccessToken" = $AccessToken
    "GraphMethod" = 'GET'
    "GraphUri" = 'https://graph.microsoft.com/' + $GraphApiEnv + $Resource + "/" + $DeviceConfigurationId + "/assignments"
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}