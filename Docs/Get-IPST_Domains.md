# Get-IPST_Domains

## SYNOPSIS 
Get AAD domains.

## SYNTAX
```Powershell
Get-IPST_Domains [[-Domain] <String>] [<CommonParameters>]

Get-IPST_Domains [[-isDefault]] [<CommonParameters>]
```
## DESCRIPTION
 
## PARAMETERS

    -Domain <String>
        Domain name (e.g. contoso.com).
        
        Required?                    false
        Position?                    1
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -isDefault [<SwitchParameter>]
        Return default domain
        
        Required?                    false
        Position?                    1
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https:/go.microsoft.com/fwlink/?LinkID=113216). 
    




## EXAMPLE 1
```Powershell
Get-IPST_Domains
```

