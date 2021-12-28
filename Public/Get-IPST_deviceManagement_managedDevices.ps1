function Get-IPST_deviceManagement_managedDevices {
  <#
  .SYNOPSIS
    Get Managed Device.
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
    PS> Get-IPST_deviceManagement_managedDevices -DeviceID 00000000-0000-0000-0000-000000000000
  #>
  [CmdletBinding()]
  param (
      [Parameter()]
      [string]$DeviceId
  )
  $Resource = '/deviceManagement/managedDevices'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($DeviceId) {
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