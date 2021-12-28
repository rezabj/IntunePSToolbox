function Get-IPST_deviceAppManagement_windowsInformationProtectionPolicies {
  <#
  .SYNOPSIS
    Get App Protection Policies.
  .DESCRIPTION
    https://docs.microsoft.com/en-us/graph/api/intune-mam-targetedmanagedapppolicyassignment-list?view=graph-rest-1.0
  .PARAMETER Id
    Specifi ID for get specific policies.
  .INPUTS
    None
  .OUTPUTS
    None
  .NOTES
    Author:         Jan Řežab
    GitHub:         https://github.com/rezabj/IntunePSToolbox
    Blog:           https://www.rezab.eu
  .EXAMPLE
    PS> Get-IPST_deviceAppManagement_windowsInformationProtectionPolicies -Id 00000000-0000-0000-0000-000000000000
  #>
  [CmdletBinding(DefaultParameterSetName='Global')]
  param (
    [Parameter(ParameterSetName='Global',Mandatory=$false,Position=0)]
    [string]$Id
  )
  $Resource = '/deviceAppManagement/windowsInformationProtectionPolicies'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }

  switch ($PsCmdlet.ParameterSetName) {
    Default {
      if ($Id) {
        $Params += @{
          "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/" + $Id + "/?`$expand=assignments"
        }
      } else {
        $Params += @{
          "GraphUri" = 'https://graph.microsoft.com/' + $IPSTGraphApiEnv + $Resource + "/?`$expand=assignments"
        }
      }
    }
  }
  $Result = Invoke-GraphAPIRequest @Params
  return $Result
}