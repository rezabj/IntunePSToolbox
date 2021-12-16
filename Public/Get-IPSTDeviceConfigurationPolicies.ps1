function Get-IPSTDeviceConfigurationPolicies {
  [CmdletBinding()]
  param (
      [Parameter()]
      [string]$DeviceConfigurationId
  )
  $Resource = '/deviceManagement/deviceConfigurations'
  $Params = @{
    "AccessToken" = $AccessToken
    "GraphMethod" = 'GET'
  }
  if ($DeviceConfigurationId) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $GraphApiEnv + $Resource + "/" + $DeviceConfigurationId
    }
  } else {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $GraphApiEnv + $Resource
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}