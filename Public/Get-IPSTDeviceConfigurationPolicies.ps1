function Get-IPSTDeviceConfigurationPolicies {
  <#
  .SYNOPSIS
    Get-IPSTDeviceConfigurationPolicies
  .DESCRIPTION
  
  .PARAMETER ConfigType
    Device configuration type. E.g. androidWorkProfileTrustedRootCertificate
  .PARAMETER ConfigId
    Specifi Device Configuration ID for get specific policy.
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPSTDeviceConfigurationPolicies -ConfigId 00000000-0000-0000-0000-000000000000
  .EXAMPLE
    PS> Get-IPSTDeviceConfigurationPolicies -ConfigType windowsUpdateForBusinessConfiguration
  #>
  [CmdletBinding()]
  param (
    [Parameter()]
    [ValidateSet(
      "androidWorkProfileTrustedRootCertificate",
      "androidWorkProfileVpnConfiguration",
      "windowsHealthMonitoringConfiguration",
      "iosGeneralDeviceConfiguration",
      "windowsUpdateForBusinessConfiguration",
      "windows10GeneralConfiguration"
      )
    ]
    [string]$ConfigType,
    [Parameter()]
    [string]$ConfigId
  )
  $Resource = '/deviceManagement/deviceConfigurations'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($DeviceConfigurationId) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $ConfigId
    }
  } else {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  if ($ConfigType) {
    $ConfigTypeLong = "#microsoft.graph." + $ConfigType
    $FiltredResult = @()
    foreach ($policy in $Result) {
      if ($policy.'@odata.type' -eq $ConfigTypeLong) {
        $FiltredResult += $policy
      }      
    }
    $Result = $FiltredResult
  }
  return $Result
}