function Get-IPST_deviceManagement_deviceCompliancePolicies {
  <#
  .SYNOPSIS
    Get-IPST_deviceManagement_deviceCompliancePolicies
  .DESCRIPTION
  
  .PARAMETER PolicyType
    Device compliance type. E.g. androidDeviceOwnerCompliancePolicy
  .PARAMETER PolicyId
    Specifi Device Configuration ID for get specific policy.
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPST_deviceManagement_deviceCompliancePolicies -PolicyId 00000000-0000-0000-0000-000000000000
  .EXAMPLE
    PS> Get-IPST_deviceManagement_deviceCompliancePolicies -PolicyType androidDeviceOwnerCompliancePolicy
  #>
  [CmdletBinding(DefaultParameterSetName='Global')]
  param (
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
    [Parameter(ParameterSetName='Actions',Position=0)][switch]$Actions, # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-devicecomplianceactionitem-list?view=graph-rest-beta
    [Parameter(ParameterSetName='DeviceOverview',Position=0)][switch]$DeviceOverview,
    [Parameter(ParameterSetName='DeviceStatus',Position=0)][switch]$DeviceStatus,
    [Parameter(ParameterSetName='Assignment',Position=0)][switch]$Assignment, # https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-devicecompliancepolicyassignment-list?view=graph-rest-beta
    [Parameter(ParameterSetName='DeviceStateSummary',Position=0)][switch]$DeviceStateSummary,
    [Parameter(ParameterSetName='Script',Position=0)][switch]$Script,
    [Parameter(ParameterSetName='SettingState',Position=0)][switch]$SettingState,
    [Parameter(ParameterSetName='SettingStateSummary',Position=0)][switch]$SettingStateSummary,
    [Parameter(ParameterSetName='ScheduledActionForRule',Position=0)][switch]$ScheduledActionForRule,
    [Parameter(ParameterSetName='UserOverview',Position=0)][switch]$UserOverview,
    [Parameter(ParameterSetName='UserStatus',Position=0)][switch]$UserStatus,

    [Parameter(ParameterSetName='Global',Mandatory=$false,Position=1)]
    [Parameter(ParameterSetName='Actions',Mandatory=$true,Position=1)]
    [Parameter(ParameterSetName='ScheduledActionForRule',Mandatory=$true,Position=1)]
    [string]$PolicyId,

    [Parameter(ParameterSetName='Actions',Mandatory=$true,Position=2)]
    [string]$ScheduledActionForRuleId

  )

  $Resource = '/deviceManagement/deviceCompliancePolicies'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }

  switch ($PsCmdlet.ParameterSetName) {
    Default {
      if ($PolicyId) {
        $Params += @{
          "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $PolicyId + "/?`$expand=assignments,scheduledActionsForRule(`$expand=scheduledActionConfigurations)"
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