# Get-IPST_deviceManagement_deviceEnrollmentConfigurations

## SYNOPSIS 
Get-IPST_deviceManagement_deviceEnrollmentConfigurations

## SYNTAX
```Powershell
Get-IPST_deviceManagement_deviceEnrollmentConfigurations [-PolicyType <String>] [[-Id] <String>] [<CommonParameters>]

Get-IPST_deviceManagement_deviceEnrollmentConfigurations [-Assignment] [-Id] <String> [<CommonParameters>]
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
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Id <String>
        Specifi Device Enrollment Configuration ID for get specific policy.
        
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
Get-IPST_deviceManagement_deviceEnrollmentConfigurations -PolicyId 00000000-0000-0000-0000-000000000000
```
## LINKS 
MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-shared-deviceenrollmentconfiguration?view=graph-rest-beta
Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_deviceEnrollmentConfigurations.md

