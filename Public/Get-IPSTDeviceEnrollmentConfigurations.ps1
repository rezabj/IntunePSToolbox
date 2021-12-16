function Get-IPSTDeviceEnrollmentConfigurations {
  [CmdletBinding()]
  param (
      [Parameter()]
      [string]$DeviceEnrollmentConfigurationId
  )
  $Resource = '/deviceManagement/deviceEnrollmentConfigurations'
  $Params = @{
    "AccessToken" = $AccessToken
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