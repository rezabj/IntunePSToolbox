function New-IPST_deviceManagement_deviceCompliancePolicies {
  <#
  .SYNOPSIS
    New-IPST_deviceManagement_deviceCompliancePolicies
  .DESCRIPTION
  
  .PARAMETER Id
    
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
    PS> New-IPST_deviceManagement_deviceCompliancePolicies
  .EXAMPLE
    PS> New-IPST_deviceManagement_deviceCompliancePolicies
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-1.0
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-androidcompliancepolicy-create?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_deviceCompliancePolicies.md
  #>
  [CmdletBinding()]
  param (
    # Device compliance type. E.g. androidDeviceOwnerCompliancePolicy
    # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-androidworkprofilecompliancepolicy-create?view=graph-rest-1.0
    # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-ioscompliancepolicy-create?view=graph-rest-1.0
    [Parameter(Mandatory=$true)]
    [ValidateSet(
      "androidWorkProfileCompliancePolicy",
      "iosCompliancePolicy"
      )
    ]
    [string]$PolicyType,

    [Parameter()]
    [array]$roleScopeTagIds = @(0),

    [Parameter()]
    [string]$description,

    [Parameter()]
    [string]$displayName,
    
    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [bool]$passwordRequired,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [ValidateRange(4, 16)]
    [Int32]$passwordMinimumLength,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [ValidateSet("deviceDefault","alphabetic","alphanumeric","alphanumericWithSymbols","lowSecurityBiometric","numeric","numericComplex","any")]
    [string]$passwordRequiredType="deviceDefault",

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [Int32]$passwordMinutesOfInactivityBeforeLock,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [ValidateRange(1, 356)]
    [Int32]$passwordExpirationDays,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [ValidateRange(1, 24)]
    [Int32]$passwordPreviousPasswordBlockCount,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [bool]$securityPreventInstallAppsFromUnknownSources,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [bool]$securityDisableUsbDebugging,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [bool]$securityRequireVerifyApps,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [bool]$deviceThreatProtectionEnabled,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [ValidateSet("unavailable","secured","low","medium","high","notSet")]
    [string]$deviceThreatProtectionRequiredSecurityLevel = "notSet",

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [bool]$securityBlockJailbrokenDevices,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [ValidateSet("8","9","10","11","12","13","14","15")]
    [string]$osMinimumVersion,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [ValidateSet("8","9","10","11","12","13","14","15")]
    [string]$osMaximumVersion,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [string]$minAndroidSecurityPatchLevel,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [bool]$storageRequireEncryption,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [bool]$securityRequireSafetyNetAttestationBasicIntegrity,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [bool]$securityRequireSafetyNetAttestationCertifiedDevice,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [bool]$securityRequireGooglePlayServices,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [bool]$securityRequireUpToDateSecurityProviders,

    [Parameter(ParameterSetName='androidWorkProfileCompliancePolicy')]
    [bool]$securityRequireCompanyPortalAppIntegrity,

    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [bool]$passcodeBlockSimple,

    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [ValidateRange(1, 65535)]
    [Int32]$passcodeExpirationDays,

    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [ValidateRange(4, 14)]
    [Int32]$passcodeMinimumLength,

    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [Int32]$passcodeMinutesOfInactivityBeforeLock,

    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [ValidateRange(1, 24)]
    [Int32]$passcodePreviousPasscodeBlockCount,

    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [Int32]$passcodeMinimumCharacterSetCount,

    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [ValidateSet("deviceDefault","alphanumeric","numeric")]
    [string]$passcodeRequiredType="deviceDefault",

    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [bool]$passcodeRequired,

    [Parameter(ParameterSetName='iosCompliancePolicy')]
    [bool]$managedEmailProfileRequired
  )

  [string]$PolicyType = "#microsoft.graph." + $PolicyType

  $PolicyObject = [PSCustomObject]@{}
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "@odata.type" -Value $PolicyType
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "roleScopeTagIds" -Value $roleScopeTagIds
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "description" -Value $description
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "passwordRequired" -Value $passwordRequired
  if ($passwordMinimumLength) {
    Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "passwordMinimumLength" -Value $passwordMinimumLength
  }
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "passwordRequiredType" -Value $passwordRequiredType
  if ($passwordMinutesOfInactivityBeforeLock) {
    Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "passwordMinutesOfInactivityBeforeLock" -Value $passwordMinutesOfInactivityBeforeLock
  }
  if ($passwordExpirationDays) {
    Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "passwordExpirationDays" -Value $passwordExpirationDays
  }
  if ($passwordPreviousPasswordBlockCount) {
    Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "passwordPreviousPasswordBlockCount" -Value $passwordPreviousPasswordBlockCount
  }
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "securityPreventInstallAppsFromUnknownSources" -Value $securityPreventInstallAppsFromUnknownSources
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "securityDisableUsbDebugging" -Value $securityDisableUsbDebugging
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "securityRequireVerifyApps" -Value $securityRequireVerifyApps
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "deviceThreatProtectionEnabled" -Value $deviceThreatProtectionEnabled
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "deviceThreatProtectionRequiredSecurityLevel" -Value $deviceThreatProtectionRequiredSecurityLevel
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "securityBlockJailbrokenDevices" -Value $securityBlockJailbrokenDevices
  if ($osMinimumVersion) {
    Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "osMinimumVersion" -Value $osMinimumVersion
  }
  if ($osMaximumVersion) {
    Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "osMaximumVersion" -Value $osMaximumVersion
  }
  if ($minAndroidSecurityPatchLevel) {
    Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "minAndroidSecurityPatchLevel" -Value $minAndroidSecurityPatchLevel
  }
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "storageRequireEncryption" -Value $storageRequireEncryption
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "securityRequireSafetyNetAttestationBasicIntegrity" -Value $securityRequireSafetyNetAttestationBasicIntegrity
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "securityRequireSafetyNetAttestationCertifiedDevice" -Value $securityRequireSafetyNetAttestationCertifiedDevice
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "securityRequireGooglePlayServices" -Value $securityRequireGooglePlayServices
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "securityRequireUpToDateSecurityProviders" -Value $securityRequireUpToDateSecurityProviders
  Add-Member -InputObject $PolicyObject -MemberType NoteProperty -Name "securityRequireCompanyPortalAppIntegrity" -Value $securityRequireCompanyPortalAppIntegrity


  $json = ConvertTo-Json -InputObject $PolicyObject
  
  $Resource = '/deviceManagement/deviceCompliancePolicies'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'POST'
    "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
    "GraphBody" = $json
  }
  write-Output $json
  
  try {
    $Result = Invoke-GraphAPIRequest @Params
  }
  catch {
   Write-Error -Message $_.Exception
  }
  
  return $Result
}