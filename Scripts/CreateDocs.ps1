Import-Module -Name ..\IntunePSToolbox.psd1 -Force -ErrorAction Stop

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
  $MDHelp += "## OUTPUTS`n"
  foreach ($output in $PSHelp.returnValues.returnValue) {
    $MDHelp += $output.type.name + "`n"
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
  $MDHelp += "## LINKS `n"
  foreach ($Link in $PSHelp.relatedLinks.navigationLink) {
    $MDHelp += $Link.linkText + "`n"
  }

  $MDFile = "..\Docs\" + $command.Name + ".md"
  Out-File -FilePath $MDFile -Encoding UTF8 -Force -InputObject $MDHelp
}