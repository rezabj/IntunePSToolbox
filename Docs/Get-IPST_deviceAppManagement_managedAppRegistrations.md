# Get-IPST_deviceAppManagement_managedAppRegistrations

## SYNOPSIS 
Get App Protection Policies registraion.

## SYNTAX
```Powershell
Get-IPST_deviceAppManagement_managedAppRegistrations [[-Id] <String>] [<CommonParameters>]
```
## DESCRIPTION
Get App Protection Policies registration.
## PARAMETERS

    -Id <String>
        Specifi ID for get specific registration.
        
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
Get-IPST_deviceAppManagement_managedAppRegistrations -Id 00000000-0000-0000-0000-000000000000
```
## LINKS 
MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-mam-managedappregistration?view=graph-rest-beta
Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceAppManagement_managedAppRegistrations.md

