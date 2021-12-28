function Get-IPST_deviceAppManagement_managedAppRegistrations {
  <#
  .SYNOPSIS
    Get App Protection Policies registraion.
  .DESCRIPTION
    Get App Protection Policies registration.
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
    PS> Get-IPST_deviceAppManagement_managedAppRegistrations -Id 00000000-0000-0000-0000-000000000000
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-mam-managedappregistration?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceAppManagement_managedAppRegistrations.md
  #>
  [CmdletBinding(DefaultParameterSetName='Global')]
  param (
    # Specifi ID for get specific registration.
    [Parameter(ParameterSetName='Global',Mandatory=$false,Position=0)]
    [string]$Id
  )
  $Resource = '/deviceAppManagement/managedAppRegistrations'
  $Params = @{
    "AccessToken" = $Global:IPSTAccessToken
    "GraphMethod" = 'GET'
  }

  switch ($PsCmdlet.ParameterSetName) {
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