function Get-IPSTDeviceConfigurationPolicies {
  $Resource = '/deviceManagement/deviceConfigurations'
  $Params = @{
    "AccessToken" = $AccessToken
    "GraphMethod" = 'GET'
    GraphUri = 'https://graph.microsoft.com/' + $GraphApiEnv + $Resource
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}