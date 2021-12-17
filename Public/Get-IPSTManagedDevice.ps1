function Get-IPSTManagedDevice {
  [CmdletBinding()]
  param (
      [Parameter()]
      [string]$DeviceId
  )
  $Resource = '/deviceManagement/managedDevices'
  $Params = @{
    "AccessToken" = $IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($DeviceConfigurationId) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $GraphApiEnv + $Resource + "/" + $DeviceId
    }
  } else {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $GraphApiEnv + $Resource
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}