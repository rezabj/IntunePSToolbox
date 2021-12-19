function Get-IPSTCoManagedDevice {
  <#
  .SYNOPSIS
    Get CoManagedDevice
  .DESCRIPTION
    
  .PARAMETER DeviceID
    Specifi DeviceID for get specific device.
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPSTCoManagedDevice -DeviceID 00000000-0000-0000-0000-000000000000
  #>

  [CmdletBinding()]
  param (
      [Parameter()]
      [string]$DeviceId
  )
  $Resource = '/deviceManagement/comanagedDevices'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($DeviceConfigurationId) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $DeviceId
    }
  } else {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}