function Get-IPST_deviceManagement_deviceCompliancePolicies {
  <#
  .SYNOPSIS
    Get-IPST_deviceManagement_deviceCompliancePolicies
  .DESCRIPTION
  
  .PARAMETER Id
    
  .INPUTS
    None
  .OUTPUTS
    Object[]
  .OUTPUTS
    PSCustomObject[]
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPST_deviceManagement_deviceCompliancePolicies -PolicyId 00000000-0000-0000-0000-000000000000
  .EXAMPLE
    PS> Get-IPST_deviceManagement_deviceCompliancePolicies -PolicyType androidDeviceOwnerCompliancePolicy
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-1.0
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_deviceCompliancePolicies.md
  #>
  [CmdletBinding(DefaultParameterSetName='Global')]
  param (
    # Device compliance type. E.g. androidDeviceOwnerCompliancePolicy
    [Parameter(ParameterSetName='Global',Mandatory=$false,Position="0")]
    [ValidateSet(
      "androidCompliancePolicy",
      "androidDeviceOwnerCompliancePolicy",
      "androidWorkProfileCompliancePolicy",
      "aospDeviceOwnerCompliancePolicy",
      "defaultDeviceCompliancePolicy",
      "iosCompliancePolicy",
      "macOSCompliancePolicy",
      "windows10CompliancePolicy",
      "windowsPhone81CompliancePolicy"
      )
    ]
    [string]$PolicyType,
        
    # Specifi Compliance policy ID.
    [Parameter(ParameterSetName='Global',Mandatory=$false,Position=1)]
    [string]$Id
  )

  $Resource = '/deviceManagement/deviceCompliancePolicies'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }

  switch ($PsCmdlet.ParameterSetName) {
    Default {
      if ($Id) {
        $Params += @{
          "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/?`$expand=assignments,scheduledActionsForRule(`$expand=scheduledActionConfigurations)"
        }
      } else {
        $Params += @{
          "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/?`$expand=assignments,scheduledActionsForRule(`$expand=scheduledActionConfigurations)"
        }
      }
      $Result = Invoke-GraphAPIRequest @Params
      if ($PolicyType) {
        $PolicyTypeLong = "#microsoft.graph." + $PolicyType
        $FiltredResult = @()
        foreach ($policy in $Result) {
          if ($policy.'@odata.type' -eq $PolicyTypeLong) {
            $FiltredResult += $policy
          }      
        }
        $Result = $FiltredResult
      }
    }
  }
  return $Result
}