# Get-IPST_Groups

## SYNOPSIS 
Get AAD groups

## SYNTAX
```Powershell
Get-IPST_Groups [[-Id] <String>] [<CommonParameters>]

Get-IPST_Groups [[-Members]] [-Id] <String> [<CommonParameters>]

Get-IPST_Groups [[-TransitiveMembers]] [-Id] <String> [<CommonParameters>]
```
## DESCRIPTION
TODO
## PARAMETERS

    -Members [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/group-list-members?view=graph-rest-beta&tabs=http
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -TransitiveMembers [<SwitchParameter>]
        https://docs.microsoft.com/en-us/graph/api/group-list-transitivemembers?view=graph-rest-beta&tabs=http
        
        Required?                    false
        Position?                    1
        Default value                False
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
Get-IPST_Domains -GroupID 00000000-0000-0000-0000-000000000000
```
## LINKS 
MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/group?view=graph-rest-beta
Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_Groups.md

