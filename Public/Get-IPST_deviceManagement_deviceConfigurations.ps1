function Get-IPST_deviceManagement_deviceConfigurations {
  <#
  .SYNOPSIS
    Get-IPST_deviceManagement_deviceConfigurations
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
    PS> Get-IPST_deviceManagement_deviceConfigurations -PolicyId 00000000-0000-0000-0000-000000000000
  .EXAMPLE
    PS> Get-IPST_deviceManagement_deviceConfigurations -PolicyType windowsUpdateForBusinessConfiguration
  #>
  [CmdletBinding(DefaultParameterSetName="Global")]
  param (
    [Parameter(ParameterSetName='Global')]
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
    [Parameter(ParameterSetName='Assignment')][switch]$Assignment,                 # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationassignment-get?view=graph-rest-beta
    [Parameter(ParameterSetName='ConflictSummary')][switch]$ConflictSummary,       # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationconflictsummary-list?view=graph-rest-beta
    [Parameter(ParameterSetName='DeviceOverview')][switch]$DeviceOverview,         # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationdeviceoverview-get?view=graph-rest-beta
    [Parameter(ParameterSetName='DeviceStateSummary')][switch]$DeviceStateSummary, # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationdevicestatesummary-get?view=graph-rest-beta
    [Parameter(ParameterSetName='DeviceStatus')][switch]$DeviceStatus,             # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationdevicestatus-list?view=graph-rest-beta
    [Parameter(ParameterSetName='GroupAssignment')][switch]$GroupAssignment,       # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationgroupassignment-list?view=graph-rest-beta
    [Parameter(ParameterSetName='UserOverview')][switch]$UserOverview,             # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationuseroverview-get?view=graph-rest-beta
    [Parameter(ParameterSetName='UserStateSummary')][switch]$UserStateSummary,     # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationuserstatesummary-get?view=graph-rest-beta
    [Parameter(ParameterSetName='UserStatus')][switch]$UserStatus,                 # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationuserstatus-list?view=graph-rest-beta
    
    [Parameter(ParameterSetName='Global', Mandatory=$false, Position=0)]
    [Parameter(ParameterSetName='Assignment', Mandatory=$true, Position=0)]
    [Parameter(ParameterSetName='DeviceOverview', Mandatory=$true, Position=0)]
    [Parameter(ParameterSetName='DeviceStatus', Mandatory=$true, Position=0)]
    [Parameter(ParameterSetName='GroupAssignment', Mandatory=$true, Position=0)]
    [Parameter(ParameterSetName='UserOverview', Mandatory=$true, Position=0)]
    [Parameter(ParameterSetName='UserStatus', Mandatory=$true, Position=0)]
    [string]$PolicyId
  )
  $Resource = '/deviceManagement/deviceConfigurations'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($Assignment) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $PolicyId + "/assignments"
    }
    $Result = Invoke-GraphAPIRequest @Params
    return $Result 
  } elseif ($ConflictSummary) {
    $Resource = '/deviceManagement/deviceConfigurationConflictSummary'
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
    }
    $Result = Invoke-GraphAPIRequest @Params
    return $Result 
  } elseif ($DeviceOverview) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $PolicyId + "/deviceStatusOverview"
    }
    $Result = Invoke-GraphAPIRequest @Params
    return $Result 
    
  } elseif ($DeviceStateSummary) {
    $Resource = '/deviceManagement/deviceConfigurationDeviceStateSummaries'
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
    }
    $Result = Invoke-GraphAPIRequest @Params
    return $Result 
  } elseif ($DeviceStatus) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $PolicyId + "/deviceStatuses/" + $DeviceStatusId
    }
    $Result = Invoke-GraphAPIRequest @Params
    return $Result 
  } elseif ($GroupAssignment) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $PolicyId + "/groupAssignments"
    }
    $Result = Invoke-GraphAPIRequest @Params
    return $Result
  } elseif ($UserOverview) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $PolicyId + "/userStatusOverview"
    }
    $Result = Invoke-GraphAPIRequest @Params
    return $Result
  } elseif ($UserStateSummary) {
    $Resource = '/deviceManagement/deviceConfigurationUserStateSummaries'
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
    }
    $Result = Invoke-GraphAPIRequest @Params
    return $Result 
  } elseif ($UserStatus) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $PolicyId + "/userStatuses"
    }
    $Result = Invoke-GraphAPIRequest @Params
    return $Result
  } else {
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
}