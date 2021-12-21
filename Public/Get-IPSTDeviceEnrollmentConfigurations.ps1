function Get-IPSTDeviceEnrollmentConfigurations {
    <#
  .SYNOPSIS
    Get-IPSTDeviceEnrollmentConfigurations
  .DESCRIPTION
    
  .PARAMETER PolicyId
    Specifi Device Enrollment Configuration ID for get specific policy.
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPSTDeviceEnrollmentConfigurations -PolicyId 00000000-0000-0000-0000-000000000000
  #>
  [CmdletBinding()]
  param (
    [Parameter(Position=0)][string]$PolicyId,

    [Parameter(Position=1)]
    [ValidateSet(
      "deviceEnrollmentLimitConfiguration",
      "deviceEnrollmentPlatformRestrictionsConfiguration",
      "deviceEnrollmentWindowsHelloForBusinessConfiguration",
      "windows10EnrollmentCompletionPageConfiguration"
      )
    ][string]$PolicyType
  )
  $Resource = '/deviceManagement/deviceEnrollmentConfigurations'
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