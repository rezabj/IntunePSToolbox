function Get-IPSTDeviceEnrollmentConfigurations {
  [CmdletBinding()]
  param (
      [Parameter()]
      [string]$DeviceEnrollmentConfigurationId
  )
  $Resource = '/deviceManagement/deviceEnrollmentConfigurations'
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