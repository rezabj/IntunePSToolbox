# Get-IPST_deviceManagement_intents

## SYNOPSIS 
Get security baselines profiles.

## SYNTAX
```Powershell
Get-IPST_deviceManagement_intents [[-Id] <String>] [<CommonParameters>]

Get-IPST_deviceManagement_intents [[-Assignment]] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_intents [[-Settings]] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_intents [[-DeviceSettingStateSummaries]] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_intents [[-DeviceStates]] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_intents [[-DeviceStateSummary]] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_intents [[-Categories]] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_intents [[-UserStates]] [-Id] <String> [<CommonParameters>]

Get-IPST_deviceManagement_intents [[-UserStateSummary]] [-Id] <String> [<CommonParameters>]
```
## DESCRIPTION
 
## PARAMETERS

    -Assignment [<SwitchParameter>]
        Get security baseline profile assignment.
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Settings [<SwitchParameter>]
        Get security baseline profile settings.
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceSettingStateSummaries [<SwitchParameter>]
        TODO
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceStates [<SwitchParameter>]
        TODO
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceStateSummary [<SwitchParameter>]
        TODO
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Categories [<SwitchParameter>]
        TODO
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -UserStates [<SwitchParameter>]
        TODO
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -UserStateSummary [<SwitchParameter>]
        TODO
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Id <String>
        Specifi security baseline profile id.
        
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
Get-IPST_deviceManagement_intents -Id 00000000-0000-0000-0000-000000000000
```
## EXAMPLE 2
```Powershell
Get-IPST_deviceManagement_intents -Assignment -Id 00000000-0000-0000-0000-000000000000
```

