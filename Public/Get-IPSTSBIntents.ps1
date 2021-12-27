function Get-IPSTSBIntents {
  <#
  .SYNOPSIS
    Get security baselines profiles.
  .DESCRIPTION
  TODO
  .PARAMETER Assignment
    Get security baseline profile assignment.
  .PARAMETER Settings
    Get security baseline profile settings.
  .PARAMETER DeviceSettingStateSummaries
    TODO
  .PARAMETER DeviceStates
    TODO
  .PARAMETER DeviceStateSummary
    TODO
  .PARAMETER Categories
    TODO
  .PARAMETER UserStates
    TODO
  .PARAMETER UserStateSummary
    TODO
  .PARAMETER Id
    Specifi security baseline profile id.
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPSTSBIntents -Id 00000000-0000-0000-0000-000000000000
  .EXAMPLE
    PS> Get-IPSTSBIntents -Assignment -Id 00000000-0000-0000-0000-000000000000
  #>
  [CmdletBinding(DefaultParameterSetName='Global')]
  param (
      [Parameter(ParameterSetName='Assignment',Mandatory=$false,Position=0)][switch]$Assignment, # https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentassignment-list?view=graph-rest-beta
      [Parameter(ParameterSetName='Settings',Mandatory=$false,Position=0)][switch]$Settings, # https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementstringsettinginstance-list?view=graph-rest-beta
      [Parameter(ParameterSetName='DeviceSettingStateSummaries',Mandatory=$false,Position=0)][switch]$DeviceSettingStateSummaries, # https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentdevicesettingstatesummary-list?view=graph-rest-beta
      [Parameter(ParameterSetName='DeviceStates',Mandatory=$false,Position=0)][switch]$DeviceStates, # https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentdevicestate-list?view=graph-rest-beta
      [Parameter(ParameterSetName='DeviceStateSummary',Mandatory=$false,Position=0)][switch]$DeviceStateSummary, # https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentdevicestatesummary-get?view=graph-rest-beta
      [Parameter(ParameterSetName='Categories',Mandatory=$false,Position=0)][switch]$Categories, # https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentsettingcategory-list?view=graph-rest-beta
      [Parameter(ParameterSetName='UserStates',Mandatory=$false,Position=0)][switch]$UserStates, # https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentuserstate-list?view=graph-rest-beta
      [Parameter(ParameterSetName='UserStateSummary',Mandatory=$false,Position=0)][switch]$UserStateSummary, # https://docs.microsoft.com/en-us/graph/api/intune-deviceintent-devicemanagementintentuserstatesummary-get?view=graph-rest-beta

      [Parameter(ParameterSetName='Global',Mandatory=$false,Position=0)]
      [Parameter(ParameterSetName='Assignment',Mandatory=$true,Position=1)]
      [Parameter(ParameterSetName='Settings',Mandatory=$true,Position=1)]
      [Parameter(ParameterSetName='DeviceSettingStateSummaries',Mandatory=$true,Position=1)]
      [Parameter(ParameterSetName='DeviceStates',Mandatory=$true,Position=1)]
      [Parameter(ParameterSetName='DeviceStateSummary',Mandatory=$true,Position=1)]
      [Parameter(ParameterSetName='Categories',Mandatory=$true,Position=1)]
      [Parameter(ParameterSetName='UserStates',Mandatory=$true,Position=1)]
      [Parameter(ParameterSetName='UserStateSummary',Mandatory=$true,Position=1)]
      [string]$Id
  )
  $Resource = '/deviceManagement/intents'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }

  switch ($PsCmdlet.ParameterSetName) {
    Assignment {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/assignments"
      }
    }
    Settings {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/settings"
      }
    }
    DeviceSettingStateSummaries {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/deviceSettingStateSummaries"
      }
    }
    DeviceStates {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/deviceStates"
      }
    }
    DeviceStateSummary {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/deviceStateSummary"
      }
    }
    Categories {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/categories"
      }
    }
    UserStates {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/userStates"
      }
    }
    UserStateSummary {
      $Params += @{
        "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/userStateSummary"
      }
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
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}