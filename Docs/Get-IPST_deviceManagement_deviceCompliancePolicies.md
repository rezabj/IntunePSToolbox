# Get-IPST_deviceManagement_deviceCompliancePolicies

## SYNOPSIS 
Get-IPST_deviceManagement_deviceCompliancePolicies

## SYNTAX
```Powershell
Get-IPST_deviceManagement_deviceCompliancePolicies [[-PolicyType] <String>] [[-PolicyId] <String>] [<CommonParameters>]

Get-IPST_deviceManagement_deviceCompliancePolicies [[-Actions]] [-PolicyId] <String> [-ScheduledActionForRuleId] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceCompliancePolicies [[-DeviceOverview]] [<CommonParameters>]

Get-IPST_deviceManagement_deviceCompliancePolicies [[-DeviceStatus]] [<CommonParameters>]

Get-IPST_deviceManagement_deviceCompliancePolicies [[-Assignment]] [<CommonParameters>]

Get-IPST_deviceManagement_deviceCompliancePolicies [[-DeviceStateSummary]] [<CommonParameters>]

Get-IPST_deviceManagement_deviceCompliancePolicies [[-Script]] [<CommonParameters>]

Get-IPST_deviceManagement_deviceCompliancePolicies [[-SettingState]] [<CommonParameters>]

Get-IPST_deviceManagement_deviceCompliancePolicies [[-SettingStateSummary]] [<CommonParameters>]

Get-IPST_deviceManagement_deviceCompliancePolicies [[-ScheduledActionForRule]] [-PolicyId] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceCompliancePolicies [[-UserOverview]] [<CommonParameters>]

Get-IPST_deviceManagement_deviceCompliancePolicies [[-UserStatus]] [<CommonParameters>]
```
## DESCRIPTION

## PARAMETERS

    -PolicyType <String>
        Device compliance type. E.g. androidDeviceOwnerCompliancePolicy
        
        Required?                    false
        Position?                    1
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Actions [<SwitchParameter>]
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceOverview [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-devicecomplianceactionitem-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceStatus [<SwitchParameter>]
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Assignment [<SwitchParameter>]
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceStateSummary [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-devicecompliancepolicyassignment-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Script [<SwitchParameter>]
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -SettingState [<SwitchParameter>]
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -SettingStateSummary [<SwitchParameter>]
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -ScheduledActionForRule [<SwitchParameter>]
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -UserOverview [<SwitchParameter>]
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -UserStatus [<SwitchParameter>]
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -PolicyId <String>
        Specifi Device Configuration ID for get specific policy.
        
        Required?                    false
        Position?                    2
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -ScheduledActionForRuleId <String>
        
        Required?                    true
        Position?                    3
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
Get-IPST_deviceManagement_deviceCompliancePolicies -PolicyId 00000000-0000-0000-0000-000000000000
```
## EXAMPLE 2
```Powershell
Get-IPST_deviceManagement_deviceCompliancePolicies -PolicyType androidDeviceOwnerCompliancePolicy
```

