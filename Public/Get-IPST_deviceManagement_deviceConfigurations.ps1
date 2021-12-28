function Get-IPST_deviceManagement_deviceConfigurations {
  <#
  .SYNOPSIS
    Get-IPST_deviceManagement_deviceConfigurations
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
    PS> Get-IPST_deviceManagement_deviceConfigurations -Id 00000000-0000-0000-0000-000000000000
  .EXAMPLE
    PS> Get-IPST_deviceManagement_deviceConfigurations -PolicyType windowsUpdateForBusinessConfiguration
  .EXAMPLE
    PS> Get-IPST_deviceManagement_deviceConfigurations -UserStatusOverview -Id 00000000-0000-0000-0000-000000000000
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-1.0
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_deviceConfigurations.md
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

    # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationassignment-get?view=graph-rest-beta
    [Parameter(ParameterSetName='Assignment')][switch]$Assignment,

    # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationdeviceoverview-get?view=graph-rest-beta
    [Parameter(ParameterSetName='DeviceOverview')][switch]$DeviceOverview,

    # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationdevicestatus-list?view=graph-rest-beta
    [Parameter(ParameterSetName='DeviceStatuses')][switch]$DeviceStatuses,

    # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationgroupassignment-list?view=graph-rest-beta
    [Parameter(ParameterSetName='GroupAssignment')][switch]$GroupAssignment,

    # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationuseroverview-get?view=graph-rest-beta
    [Parameter(ParameterSetName='UserStatusOverview')][switch]$UserStatusOverview,

    # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationuserstatus-list?view=graph-rest-beta
    [Parameter(ParameterSetName='UserStatuses')][switch]$UserStatuses,
    
    # Specifi Device Configuration Id.
    [Parameter(ParameterSetName='Global', Mandatory=$false, Position=0)]
    [Parameter(ParameterSetName='Assignment', Mandatory=$true, Position=0)]
    [Parameter(ParameterSetName='DeviceOverview', Mandatory=$true, Position=0)]
    [Parameter(ParameterSetName='DeviceStatuses', Mandatory=$true, Position=0)]
    [Parameter(ParameterSetName='GroupAssignment', Mandatory=$true, Position=0)]
    [Parameter(ParameterSetName='UserStatusOverview', Mandatory=$true, Position=0)]
    [Parameter(ParameterSetName='UserStatuses', Mandatory=$true, Position=0)]
    [string]$Id
  )
  $Resource = '/deviceManagement/deviceConfigurations'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }

  switch ($PsCmdlet.ParameterSetName) {
    Assignment {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/assignments"
      }
      $Result = Invoke-GraphAPIRequest @Params 
    }
    DeviceOverview {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/deviceStatusOverview"
      }
      $Result = Invoke-GraphAPIRequest @Params
    }
    DeviceStatuses {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/deviceStatuses"
      }
      $Result = Invoke-GraphAPIRequest @Params
    }
    GroupAssignment {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/groupAssignments"
      }
      $Result = Invoke-GraphAPIRequest @Params
    }
    UserStatusOverview {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/userStatusOverview"
      }
      $Result = Invoke-GraphAPIRequest @Params
    }
    UserStatuses {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/userStatuses"
      }
      $Result = Invoke-GraphAPIRequest @Params
    }
    Default {
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
    }
  }
  return $Result
}