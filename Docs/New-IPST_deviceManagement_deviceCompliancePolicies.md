# New-IPST_deviceManagement_deviceCompliancePolicies

## SYNOPSIS 
New-IPST_deviceManagement_deviceCompliancePolicies

## SYNTAX
```Powershell
New-IPST_deviceManagement_deviceCompliancePolicies -PolicyType <String> [-roleScopeTagIds <Array>] [-description <String>] [-displayName <String>] [-passwordR
equired <Boolean>] [-passwordMinimumLength <Int32>] [-passwordRequiredType <String>] [-passwordMinutesOfInactivityBeforeLock <Int32>] [-passwordExpirationDays
 <Int32>] [-passwordPreviousPasswordBlockCount <Int32>] [-securityPreventInstallAppsFromUnknownSources <Boolean>] [-securityDisableUsbDebugging <Boolean>] [-s
ecurityRequireVerifyApps <Boolean>] [-deviceThreatProtectionEnabled <Boolean>] [-deviceThreatProtectionRequiredSecurityLevel <String>] [-securityBlockJailbrok
enDevices <Boolean>] [-osMinimumVersion <String>] [-osMaximumVersion <String>] [-minAndroidSecurityPatchLevel <String>] [-storageRequireEncryption <Boolean>] 
[-securityRequireSafetyNetAttestationBasicIntegrity <Boolean>] [-securityRequireSafetyNetAttestationCertifiedDevice <Boolean>] [-securityRequireGooglePlayServ
ices <Boolean>] [-securityRequireUpToDateSecurityProviders <Boolean>] [-securityRequireCompanyPortalAppIntegrity <Boolean>] [<CommonParameters>]

New-IPST_deviceManagement_deviceCompliancePolicies -PolicyType <String> [-roleScopeTagIds <Array>] [-description <String>] [-displayName <String>] [-deviceThr
eatProtectionEnabled <Boolean>] [-deviceThreatProtectionRequiredSecurityLevel <String>] [-securityBlockJailbrokenDevices <Boolean>] [-osMinimumVersion <String
>] [-osMaximumVersion <String>] [-passcodeBlockSimple <Boolean>] [-passcodeExpirationDays <Int32>] [-passcodeMinimumLength <Int32>] [-passcodeMinutesOfInactiv
ityBeforeLock <Int32>] [-passcodePreviousPasscodeBlockCount <Int32>] [-passcodeMinimumCharacterSetCount <Int32>] [-passcodeRequiredType <String>] [-passcodeRe
quired <Boolean>] [-managedEmailProfileRequired <Boolean>] [<CommonParameters>]
```
## DESCRIPTION

## PARAMETERS

    -PolicyType <String>
        Device compliance type. E.g. androidDeviceOwnerCompliancePolicy
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-androidworkprofilecompliancepolicy-create?view=graph-rest-1.0
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-ioscompliancepolicy-create?view=graph-rest-1.0
        
        Required?                    true
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -roleScopeTagIds <Array>
        
        Required?                    false
        Position?                    named
        Default value                @(0)
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -description <String>
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -displayName <String>
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passwordRequired <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passwordMinimumLength <Int32>
        
        Required?                    false
        Position?                    named
        Default value                0
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passwordRequiredType <String>
        
        Required?                    false
        Position?                    named
        Default value                deviceDefault
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passwordMinutesOfInactivityBeforeLock <Int32>
        
        Required?                    false
        Position?                    named
        Default value                0
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passwordExpirationDays <Int32>
        
        Required?                    false
        Position?                    named
        Default value                0
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passwordPreviousPasswordBlockCount <Int32>
        
        Required?                    false
        Position?                    named
        Default value                0
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -securityPreventInstallAppsFromUnknownSources <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -securityDisableUsbDebugging <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -securityRequireVerifyApps <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -deviceThreatProtectionEnabled <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -deviceThreatProtectionRequiredSecurityLevel <String>
        
        Required?                    false
        Position?                    named
        Default value                notSet
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -securityBlockJailbrokenDevices <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -osMinimumVersion <String>
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -osMaximumVersion <String>
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -minAndroidSecurityPatchLevel <String>
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -storageRequireEncryption <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -securityRequireSafetyNetAttestationBasicIntegrity <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -securityRequireSafetyNetAttestationCertifiedDevice <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -securityRequireGooglePlayServices <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -securityRequireUpToDateSecurityProviders <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -securityRequireCompanyPortalAppIntegrity <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passcodeBlockSimple <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passcodeExpirationDays <Int32>
        
        Required?                    false
        Position?                    named
        Default value                0
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passcodeMinimumLength <Int32>
        
        Required?                    false
        Position?                    named
        Default value                0
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passcodeMinutesOfInactivityBeforeLock <Int32>
        
        Required?                    false
        Position?                    named
        Default value                0
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passcodePreviousPasscodeBlockCount <Int32>
        
        Required?                    false
        Position?                    named
        Default value                0
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passcodeMinimumCharacterSetCount <Int32>
        
        Required?                    false
        Position?                    named
        Default value                0
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passcodeRequiredType <String>
        
        Required?                    false
        Position?                    named
        Default value                deviceDefault
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -passcodeRequired <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -managedEmailProfileRequired <Boolean>
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https:/go.microsoft.com/fwlink/?LinkID=113216). 
    




## OUTPUTS
Object[]
PSCustomObject[]
## EXAMPLE 1
```Powershell
New-IPST_deviceManagement_deviceCompliancePolicies
```
## EXAMPLE 2
```Powershell
New-IPST_deviceManagement_deviceCompliancePolicies
```
## LINKS 
MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-1.0
MS Docs: https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-androidcompliancepolicy-create?view=graph-rest-beta
Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_deviceCompliancePolicies.md

