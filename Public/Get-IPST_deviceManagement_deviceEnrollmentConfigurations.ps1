function Get-IPST_deviceManagement_deviceEnrollmentConfigurations {
    <#
  .SYNOPSIS
    Get-IPST_deviceManagement_deviceEnrollmentConfigurations
  .DESCRIPTION
    TODO
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
    PS> Get-IPST_deviceManagement_deviceEnrollmentConfigurations -PolicyId 00000000-0000-0000-0000-000000000000
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-shared-deviceenrollmentconfiguration?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_deviceEnrollmentConfigurations.md
  #>
  [CmdletBinding(DefaultParameterSetName="Global")]
  
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

    # Specifi Device Enrollment Configuration ID for get specific policy.
    [Parameter(ParameterSetName='Global',     Mandatory=$false, Position=0)]
    [Parameter(ParameterSetName='Assignment', Mandatory=$true,  Position=0)]
    [string]$Id
    
  )
  $Resource = '/deviceManagement/deviceEnrollmentConfigurations'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }
  switch ($PsCmdlet.ParameterSetName) {
    Assignment {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/assignments"
      }
      $Result = Invoke-GraphAPIRequest @Params
    }
    Default {
      if ($Id) {
        $Params += @{
          "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id
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
    }
  }
  return $Result
}