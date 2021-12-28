# Get-IPST_Groups

## SYNOPSIS 
Get AAD groups

## SYNTAX
```Powershell
Get-IPST_Groups [[-GroupId] <String>] [<CommonParameters>]

Get-IPST_Groups [[-Members]] [-GroupId] <String> [<CommonParameters>]

Get-IPST_Groups [[-transitiveMembers]] [-GroupId] <String> [<CommonParameters>]
```
## DESCRIPTION

## PARAMETERS

    -Members [<SwitchParameter>]
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -transitiveMembers [<SwitchParameter>]
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -GroupId <String>
        
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
    




## EXAMPLE 1
```Powershell
Get-IPST_Domains -GroupID 00000000-0000-0000-0000-000000000000
```

