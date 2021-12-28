# Get-IPST_deviceManagement_roleScopeTags

## SYNOPSIS 
Get Scopes tags

## SYNTAX
```Powershell
Get-IPST_deviceManagement_roleScopeTags [[-Id] <String>] [<CommonParameters>]
```
## DESCRIPTION
https://docs.microsoft.com/en-us/graph/api/intune-rbac-rolescopetag-list?view=graph-rest-beta
## PARAMETERS

    -Id <String>
        Specifi ID for get specific scope tag.
        
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
Get-IPST_deviceManagement_roleScopeTags -Id 00000000-0000-0000-0000-000000000000
```

