function Get-IPSTDeviceCompliancePolicies {
  <#
  .SYNOPSIS
    Get-IPSTDeviceCompliancePolicies
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
    PS> Get-IPSTDeviceCompliancePolicies -PolicyId 00000000-0000-0000-0000-000000000000
  .EXAMPLE
    PS> Get-IPSTDeviceCompliancePolicies -PolicyType androidDeviceOwnerCompliancePolicy
  #>
  [CmdletBinding()]
  param (
    [Parameter()]
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
    [Parameter()]
    [string]$PolicyId
  )
  $Resource = '/deviceManagement/deviceCompliancePolicies'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  if ($PolicyId) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $PolicyId
    }
  } else {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource
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
  return $Result
}