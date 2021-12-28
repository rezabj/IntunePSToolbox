$commands = Get-Command -Module "IntunePSToolbox"


foreach ($command in $commands) {
  $PSHelp = Get-Help $command.Name -Full
  $MDHelp  = "# " + $command.Name + "`n"
  $MDHelp += "`n"
  $MDHelp += "## SYNOPSIS `n"
  $MDHelp += $PSHelp.Synopsis + "`n"
  $MDHelp += "`n"
  $MDHelp += "## SYNTAX`n"
  $MDHelp += '```Powershell' + "`n" 
  $Syntax = $PSHelp.syntax | Out-String
  $MDHelp += $Syntax.Trim() + "`n"
  $MDHelp += '```' + "`n"
  $MDHelp += "## DESCRIPTION`n"
  $MDHelp += $PSHelp.description.text + "`n"
  $MDHelp += "## PARAMETERS`n"
  foreach ($parameter in $PSHelp.parameters) {
    $param = $parameter | Out-String
    $MDHelp += $param + "`n"
  }
  $i = 1
  foreach ($Example in $PSHelp.examples.example) {
    $MDHelp += "## EXAMPLE " + $i + "`n" 
    $Examp = $Example.code | Out-String
    $MDHelp += '```Powershell' + "`n" 
    $MDHelp += $Examp.Trim() + "`n"
    $MDHelp += '```' + "`n"
    $i++
  }

  $MDFile = "..\Docs\" + $command.Name + ".md"
  Out-File -FilePath $MDFile -Encoding UTF8 -Force -InputObject $MDHelp
}
set-location -Path ..