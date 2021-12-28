# Get-IPST_deviceManagement_deviceEnrollmentConfigurations

## SYNOPSIS 
Get-IPST_deviceManagement_deviceEnrollmentConfigurations

## SYNTAX
```Powershell
Get-IPST_deviceManagement_deviceEnrollmentConfigurations [-PolicyType <String>] [[-PolicyId] <String>] [<CommonParameters>]

Get-IPST_deviceManagement_deviceEnrollmentConfigurations [-Assignment] [-PolicyId] <String> [<CommonParameters>]
```
## DESCRIPTION

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
        
    -PolicyId <String>
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
    




## EXAMPLE 1
```Powershell
Get-IPST_deviceManagement_deviceEnrollmentConfigurations -PolicyId 00000000-0000-0000-0000-000000000000
```

