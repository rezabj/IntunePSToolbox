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
      "androidCertificateProfileBase",
      "androidCustomConfiguration",
      "androidDeviceOwnerCertificateProfileBase",
      "androidDeviceOwnerDerivedCredentialAuthenticationConfiguration",
      "androidDeviceOwnerEnterpriseWiFiConfiguration",
      "androidDeviceOwnerGeneralDeviceConfiguration",
      "androidDeviceOwnerImportedPFXCertificateProfile",
      "androidDeviceOwnerPkcsCertificateProfile",
      "androidDeviceOwnerScepCertificateProfile",
      "androidDeviceOwnerTrustedRootCertificate",
      "androidDeviceOwnerVpnConfiguration",
      "androidEasEmailProfileConfiguration",
      "androidEnterpriseWiFiConfiguration",
      "androidForWorkCertificateProfileBase",
      "androidForWorkCustomConfiguration",
      "androidForWorkEasEmailProfileBase",
      "androidForWorkEnterpriseWiFiConfiguration",
      "androidForWorkGeneralDeviceConfiguration",
      "androidForWorkGmailEasConfiguration",
      "androidForWorkImportedPFXCertificateProfile",
      "androidForWorkNineWorkEasConfiguration",
      "androidForWorkPkcsCertificateProfile",
      "androidForWorkScepCertificateProfile",
      "androidForWorkTrustedRootCertificate",
      "androidForWorkVpnConfiguration",
      "androidForWorkWiFiConfiguration",
      "androidGeneralDeviceConfiguration",
      "androidImportedPFXCertificateProfile",
      "androidOmaCpConfiguration",
      "androidPkcsCertificateProfile",
      "androidScepCertificateProfile",
      "androidTrustedRootCertificate",
      "androidVpnConfiguration",
      "androidWiFiConfiguration",
      "androidWorkProfileCertificateProfileBase",
      "androidWorkProfileCustomConfiguration",
      "androidWorkProfileEasEmailProfileBase",
      "androidWorkProfileEnterpriseWiFiConfiguration",
      "androidWorkProfileGeneralDeviceConfiguration",
      "androidWorkProfileGmailEasConfiguration",
      "androidWorkProfileNineWorkEasConfiguration",
      "androidWorkProfilePkcsCertificateProfile",
      "androidWorkProfileScepCertificateProfile",
      "androidWorkProfileTrustedRootCertificate",
      "androidWorkProfileVpnConfiguration",
      "androidWorkProfileWiFiConfiguration",
      "aospDeviceOwnerDeviceConfiguration",
      "appleDeviceFeaturesConfigurationBase",
      "appleExpeditedCheckinConfigurationBase",
      "appleVpnConfiguration",
      "easEmailProfileConfigurationBase",
      "editionUpgradeConfiguration",
      "iosCertificateProfile",
      "iosCertificateProfileBase",
      "iosCustomConfiguration",
      "iosDerivedCredentialAuthenticationConfiguration",
      "iosDeviceFeaturesConfiguration",
      "iosEasEmailProfileConfiguration",
      "iosEduDeviceConfiguration",
      "iosEducationDeviceConfiguration",
      "iosEnterpriseWiFiConfiguration",
      "iosExpeditedCheckinConfiguration",
      "iosGeneralDeviceConfiguration",
      "iosImportedPFXCertificateProfile",
      "iosPkcsCertificateProfile",
      "iosScepCertificateProfile",
      "iosTrustedRootCertificate",
      "iosUpdateConfiguration",
      "iosVpnConfiguration",
      "iosWiFiConfiguration",
      "iosikEv2VpnConfiguration",
      "macOSCertificateProfileBase",
      "macOSCustomAppConfiguration",
      "macOSCustomConfiguration",
      "macOSDeviceFeaturesConfiguration",
      "macOSEndpointProtectionConfiguration",
      "macOSEnterpriseWiFiConfiguration",
      "macOSExtensionsConfiguration",
      "macOSGeneralDeviceConfiguration",
      "macOSImportedPFXCertificateProfile",
      "macOSPkcsCertificateProfile",
      "macOSScepCertificateProfile",
      "macOSSoftwareUpdateConfiguration",
      "macOSTrustedRootCertificate",
      "macOSVpnConfiguration",
      "macOSWiFiConfiguration",
      "macOSWiredNetworkConfiguration",
      "sharedPCConfiguration",
      "unsupportedDeviceConfiguration",
      "vpnConfiguration",
      "windows10CertificateProfileBase",
      "windows10CustomConfiguration",
      "windows10DeviceFirmwareConfigurationInterface",
      "windows10EasEmailProfileConfiguration",
      "windows10EndpointProtectionConfiguration",
      "windows10EnterpriseModernAppManagementConfiguration",
      "windows10GeneralConfiguration",
      "windows10ImportedPFXCertificateProfile",
      "windows10MobileCompliancePolicy",
      "windows10NetworkBoundaryConfiguration",
      "windows10PFXImportCertificateProfile",
      "windows10PkcsCertificateProfile",
      "windows10SecureAssessmentConfiguration",
      "windows10TeamGeneralConfiguration",
      "windows10VpnConfiguration",
      "windows81CertificateProfileBase",
      "windows81CompliancePolicy",
      "windows81GeneralConfiguration",
      "windows81SCEPCertificateProfile",
      "windows81VpnConfiguration",
      "windows81WifiImportConfiguration",
      "windowsCertificateProfileBase",
      "windowsDefenderAdvancedThreatProtectionConfiguration",
      "windowsDeliveryOptimizationConfiguration",
      "windowsHealthMonitoringConfiguration",
      "windowsIdentityProtectionConfiguration",
      "windowsKioskConfiguration",
      "windowsPhone81CertificateProfileBase",
      "windowsPhone81CustomConfiguration",
      "windowsPhone81GeneralConfiguration",
      "windowsPhone81ImportedPFXCertificateProfile",
      "windowsPhone81SCEPCertificateProfil",
      "windowsPhone81TrustedRootCertificate",
      "windowsPhone81VpnConfiguration",
      "windowsPhoneEASEmailProfileConfiguration",
      "windowsUpdateForBusinessConfiguration",
      "windowsVpnConfiguration",
      "windowsWifiConfiguration",
      "windowsWifiEnterpriseEAPConfiguration"
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