# Get-IPST_deviceManagement_deviceConfigurations

## SYNOPSIS 
Get-IPST_deviceManagement_deviceConfigurations

## SYNTAX
```Powershell
Get-IPST_deviceManagement_deviceConfigurations [-PolicyType <String>] [[-PolicyId] <String>] [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-Assignment] [-PolicyId] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-ConflictSummary] [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-DeviceOverview] [-PolicyId] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-DeviceStateSummary] [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-DeviceStatus] [-PolicyId] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-GroupAssignment] [-PolicyId] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-UserOverview] [-PolicyId] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-UserStateSummary] [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-UserStatus] [-PolicyId] <String> [<CommonParameters>]
```
## DESCRIPTION

## PARAMETERS

    -PolicyType <String>
        Device configuration type. E.g. androidWorkProfileTrustedRootCertificate
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Assignment [<SwitchParameter>]
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -ConflictSummary [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationassignment-get?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceOverview [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationconflictsummary-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceStateSummary [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationdeviceoverview-get?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceStatus [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationdevicestatesummary-get?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -GroupAssignment [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationdevicestatus-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -UserOverview [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationgroupassignment-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -UserStateSummary [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationuseroverview-get?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -UserStatus [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationuserstatesummary-get?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -PolicyId <String>
        Specifi Device Configuration ID for get specific policy.
        
        Required?                    false
        Position?                    1
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https:/go.microsoft.com/fwlink/?LinkID=113216). 
    




## EXAMPLE 1
```Powershell
Get-IPST_deviceManagement_deviceConfigurations -PolicyId 00000000-0000-0000-0000-000000000000
```
## EXAMPLE 2
```Powershell
Get-IPST_deviceManagement_deviceConfigurations -PolicyType windowsUpdateForBusinessConfiguration
```

