$BuilPath = "..\Build\IntunePSToolbox"
if (!(Test-Path -Path $BuilPath -PathType Container)) {
  New-Item -Path $BuilPath -ItemType Directory -Force
}
Copy-Item -Path ..\IntunePSToolbox.psd1 -Destination $BuilPath -Force
Copy-Item -Path ..\IntunePSToolbox.psm1 -Destination $BuilPath -Force
Copy-Item -Path ..\Private -Destination $BuilPath -Recurse -Force
Copy-Item -Path ..\Public -Destination $BuilPath -Recurse -Force