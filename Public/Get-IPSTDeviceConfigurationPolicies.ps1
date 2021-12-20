function Get-IPSTDeviceConfigurationPolicies {
  <#
  .SYNOPSIS
    Get-IPSTDeviceConfigurationPolicies
  .DESCRIPTION
  
  .PARAMETER PolicyType
    Device configuration type. E.g. androidWorkProfileTrustedRootCertificate
  .PARAMETER PolicyId
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
    PS> Get-IPSTDeviceConfigurationPolicies -PolicyId 00000000-0000-0000-0000-000000000000
  .EXAMPLE
    PS> Get-IPSTDeviceConfigurationPolicies -PolicyType windowsUpdateForBusinessConfiguration
  #>
  [CmdletBinding()]
  param (
    [Parameter()]
    [ValidateSet(
      "androidWorkProfileTrustedRootCertificate",
      "androidWorkProfileVpnConfiguration",
      "androidDeviceOwnerDerivedCredentialAuthenticationConfiguration",
      "androidDeviceOwnerEnterpriseWiFiConfiguration",
      "androidDeviceOwnerGeneralDeviceConfiguration",
      "androidDeviceOwnerImportedPFXCertificateProfile",
      "androidDeviceOwnerPkcsCertificateProfile",
      "androidDeviceOwnerScepCertificateProfile",
      "androidDeviceOwnerTrustedRootCertificate",
      "androidDeviceOwnerVpnConfiguration",
      "windowsHealthMonitoringConfiguration",
      "iosGeneralDeviceConfiguration",
      "windowsUpdateForBusinessConfiguration",
      "windows10GeneralConfiguration"
      )
    ]
    [string]$PolicyType,
    [Parameter()]
    [string]$PolicyId
  )
  $Resource = '/deviceManagement/deviceConfigurations'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($PolicyId) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $PolicyId
    }
  } else {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  if ($PolicyType) {
    $PolicyTypeLong = "#microsoft.graph." + $PolicyType
    $FiltredResult = @()
    foreach ($policy in $Result) {
      if ($policy.'@odata.type' -eq $PolicyTypeLong) {
        $FiltredResult += $policy
      }      
    }
    $Result = $FiltredResult
  }
  return $Result
}