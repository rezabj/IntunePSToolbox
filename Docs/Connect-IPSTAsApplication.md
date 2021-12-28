# Connect-IPSTAsApplication

## SYNOPSIS 
Connect to AAD application "Intune PS Toolbox"

## SYNTAX
```Powershell
Connect-IPSTAsApplication -TenantID <String> -ClientID <String> -Secret <SecureString> [[-Endpoint] <String>] [<CommonParameters>]
```
## DESCRIPTION
Before you use this function create Azure AD Application. You can use function New-IPSTAADApp for create new one. Be sure that you have appropriate permission for create Azure AD App.
## PARAMETERS

    -TenantID <String>
        Tenant ID.
        
        Required?                    true
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -ClientID <String>
        Azure App (Client) ID.
        
        Required?                    true
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Secret <SecureString>
        App secret
        
        Required?                    true
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Endpoint <String>
        Grahp API environment - beta or 1.0
        
        Required?                    false
        Position?                    3
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https:/go.microsoft.com/fwlink/?LinkID=113216). 
    




## OUTPUTS
None
## EXAMPLE 1
```Powershell
Connect-IPSTAsApplication -TenantID 00000000-0000-0000-0000-000000000000 -ClientID 00000000-0000-0000-0000-000000000000 -Secret XXXXXXXX
```
## LINKS 

