# Get-IPST_deviceAppManagement_iosManagedAppProtections

## SYNOPSIS 
Get iOS App Protection Policies.

## SYNTAX
```Powershell
Get-IPST_deviceAppManagement_iosManagedAppProtections [[-Id] <String>] [<CommonParameters>]
```
## DESCRIPTION
Functions search and returns iOS App Protection Policies.
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
Get-IPST_deviceAppManagement_iosManagedAppProtections -Id 00000000-0000-0000-0000-000000000000
```
## LINKS 
MS Docs: https://docs.microsoft.com/en-us/graph/api/intune-mam-targetedmanagedapppolicyassignment-list?view=graph-rest-1.0
Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceAppManagement_iosManagedAppProtections.md

