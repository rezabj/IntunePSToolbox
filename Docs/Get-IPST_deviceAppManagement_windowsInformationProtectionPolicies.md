# Get-IPST_deviceAppManagement_windowsInformationProtectionPolicies

## SYNOPSIS 
Get Policy for Windows information protection without MDM.

## SYNTAX
```Powershell
Get-IPST_deviceAppManagement_windowsInformationProtectionPolicies [[-Id] <String>] [<CommonParameters>]
```
## DESCRIPTION
TODO
## PARAMETERS

    -Id <String>
        Specifi ID for get specific policies.
        
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
Get-IPST_deviceAppManagement_windowsInformationProtectionPolicies -Id 00000000-0000-0000-0000-000000000000
```
## LINKS 
MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-mam-windowsinformationprotectionpolicy?view=graph-rest-1.0
Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceAppManagement_windowsInformationProtectionPolicies.md

