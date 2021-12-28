# Get-IPST_deviceManagement_comanagedDevices

## SYNOPSIS 
Get CoManagedDevice

## SYNTAX
```Powershell
Get-IPST_deviceManagement_comanagedDevices [[-Id] <String>] [<CommonParameters>]
```
## DESCRIPTION
TODO
## PARAMETERS

    -Id <String>
        Specifi Id for get specific device.
        
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
Get-IPST_deviceManagement_comanagedDevices -DeviceID 00000000-0000-0000-0000-000000000000
```
## LINKS 
MS Docs: https://docs.microsoft.com/en-us/graph/api/intune-devices-windowsmanageddevice-list?view=graph-rest-beta
Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_comanagedDevices.md

