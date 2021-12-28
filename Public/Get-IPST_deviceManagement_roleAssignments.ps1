function Get-IPST_deviceManagement_roleAssignments {
    <#
  .SYNOPSIS
    Get-IPST_deviceManagement_roleAssignments
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
    PS> Get-IPST_deviceManagement_roleAssignments -Id 00000000-0000-0000-0000-000000000000
  .LINK
    MS Docs: https://docs.microsoft.com/en-us/graph/api/resources/intune-rbac-deviceandappmanagementroleassignment?view=graph-rest-beta
  .LINK
    Online version: https://github.com/rezabj/IntunePSToolbox/blob/main/Docs/Get-IPST_deviceManagement_roleAssignments.md
  #>
  [CmdletBinding(DefaultParameterSetName="Global")]
  
  param (   

    # Specifi roleAssignment ID.
    [Parameter(ParameterSetName='Global',     Mandatory=$false, Position=0)]
    [string]$Id
    
  )
  $Resource = '/deviceManagement/roleAssignments'
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
      $Result = Invoke-GraphAPIRequest @Params
    }
  }
  return $Result
}