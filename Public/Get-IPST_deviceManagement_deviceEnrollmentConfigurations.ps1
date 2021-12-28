function Get-IPST_deviceManagement_deviceEnrollmentConfigurations {
    <#
  .SYNOPSIS
    Get-IPST_deviceManagement_deviceEnrollmentConfigurations
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
    PS> Get-IPST_deviceManagement_deviceEnrollmentConfigurations -PolicyId 00000000-0000-0000-0000-000000000000
  #>
  [CmdletBinding(DefaultParameterSetName="Global")]
  # /deviceManagement/deviceEnrollmentConfigurations/{deviceEnrollmentConfigurationId}/assignments
  param (
    [Parameter(ParameterSetName='Global')]
    [ValidateSet(
      "deviceEnrollmentLimitConfiguration",
      "deviceEnrollmentPlatformRestrictionsConfiguration",
      "deviceEnrollmentWindowsHelloForBusinessConfiguration",
      "windows10EnrollmentCompletionPageConfiguration"
      )
    ][string]$PolicyType,

    
    [Parameter(ParameterSetName='Assignment')][switch]$Assignment,

    [Parameter(ParameterSetName='Global',     Mandatory=$false, Position=0)]
    [Parameter(ParameterSetName='Assignment', Mandatory=$true,  Position=0)]
    [string]$PolicyId
    
  )
  $Resource = '/deviceManagement/deviceEnrollmentConfigurations'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }

  if ($Assignment) {
    $Params += @{
      "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $PolicyId + "/assignments"
    }
    $Result = Invoke-GraphAPIRequest @Params
    return $Result 
  } else {
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
}