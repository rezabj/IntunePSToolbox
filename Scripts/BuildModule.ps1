$BuilPath = "..\Build\IntunePSToolbox"
Copy-Item -Path ..\IntunePSToolbox.psd1 -Destination $BuilPath -Force
Copy-Item -Path ..\IntunePSToolbox.psm1 -Destination $BuilPath -Force
Copy-Item -Path ..\Private -Destination $BuilPath -Recurse -Force
Copy-Item -Path ..\Public -Destination $BuilPath -Recurse -Force