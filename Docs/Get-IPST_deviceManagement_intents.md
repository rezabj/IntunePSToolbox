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
TODO
## PARAMETERS

    -Assignment [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentassignment-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Settings [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementstringsettinginstance-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceSettingStateSummaries [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentdevicesettingstatesummary-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceStates [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentdevicestate-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -DeviceStateSummary [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentdevicestatesummary-get?view=graph-rest-beta
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Categories [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentsettingcategory-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -UserStates [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentuserstate-list?view=graph-rest-beta
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -UserStateSummary [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentuserstatesummary-get?view=graph-rest-beta
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Id <String>
        
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
Get-IPST_deviceManagement_intents -Id 00000000-0000-0000-0000-000000000000
```
## EXAMPLE 2
```Powershell
Get-IPST_deviceManagement_intents -Assignment -Id 00000000-0000-0000-0000-000000000000
```
## LINKS 

