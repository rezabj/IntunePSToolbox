function Get-IPST_deviceManagement_comanagedDevices {
  <#
  .SYNOPSIS
    Get CoManagedDevice
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
    PS> Get-IPST_deviceManagement_comanagedDevices -DeviceID 00000000-0000-0000-0000-000000000000
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/intune-devices-windowsmanageddevice-list?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_comanagedDevices.md
  #>

  [CmdletBinding()]
  param (
      # Specifi Id for get specific device.
      [Parameter()]
      [string]$Id
  )
  $Resource = '/deviceManagement/comanagedDevices'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($Id) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id
    }
  } else {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}