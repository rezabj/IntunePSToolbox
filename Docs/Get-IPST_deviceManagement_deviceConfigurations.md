# Get-IPST_deviceManagement_deviceConfigurations

## SYNOPSIS 
Get-IPST_deviceManagement_deviceConfigurations

## SYNTAX
```Powershell
Get-IPST_deviceManagement_deviceConfigurations [-PolicyType <String>] [[-Id] <String>] [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-Assignment] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-DeviceOverview] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-DeviceStatuses] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-GroupAssignment] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-UserStatusOverview] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_deviceConfigurations [-UserStatuses] [-Id] <String> [<CommonParameters>]
```
## DESCRIPTION
TODO
## PARAMETERS

    -PolicyType <String>
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Assignment [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationassignment-get?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceOverview [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationdeviceoverview-get?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceStatuses [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationdevicestatus-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -GroupAssignment [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationgroupassignment-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -UserStatusOverview [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationuseroverview-get?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -UserStatuses [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfigurationuserstatus-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Id <String>
        Specifi Device Configuration Id.
        
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
    




## OUTPUTS
Object[]
PSCustomObject[]
## EXAMPLE 1
```Powershell
Get-IPST_deviceManagement_deviceConfigurations -Id 00000000-0000-0000-0000-000000000000
```
## EXAMPLE 2
```Powershell
Get-IPST_deviceManagement_deviceConfigurations -PolicyType windowsUpdateForBusinessConfiguration
```
## EXAMPLE 3
```Powershell
Get-IPST_deviceManagement_deviceConfigurations -UserStatusOverview -Id 00000000-0000-0000-0000-000000000000
```
## LINKS 
MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-1.0
Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_deviceConfigurations.md

