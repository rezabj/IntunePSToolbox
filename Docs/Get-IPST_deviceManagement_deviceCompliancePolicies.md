# Get-IPST_deviceManagement_deviceCompliancePolicies

## SYNOPSIS 
Get-IPST_deviceManagement_deviceCompliancePolicies

## SYNTAX
```Powershell
Get-IPST_deviceManagement_deviceCompliancePolicies [[-PolicyType] <String>] [[-Id] <String>] [<CommonParameters>]
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
        
    -Id <String>
        
        Required?                    false
        Position?                    2
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
Get-IPST_deviceManagement_deviceCompliancePolicies -PolicyId 00000000-0000-0000-0000-000000000000
```
## EXAMPLE 2
```Powershell
Get-IPST_deviceManagement_deviceCompliancePolicies -PolicyType androidDeviceOwnerCompliancePolicy
```
## LINKS 
MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-1.0
Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_deviceCompliancePolicies.md

