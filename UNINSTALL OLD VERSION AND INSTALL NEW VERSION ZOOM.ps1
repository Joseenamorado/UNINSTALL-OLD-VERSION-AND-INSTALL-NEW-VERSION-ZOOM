<#
.ABSOLUTEPARSE True
--------------------------------------------------------------------------------------------------------------------
#>
#Descarga de desinstslador de zoom e instalacion
$uri = 'https://drive.google.com/uc?id=13J5kmMrq-21CGBHwz_rojOFd5juoqOVu&export=download&confirm=t'
$out= "C:\CleanZoom.exe"
Invoke-WebRequest -uri $uri -OutFile $out
c:\CleanZoom.exe /silent
Start-Sleep -Seconds 60

#instalacion ZOOM
$uri = 'https://cdn.zoom.us/prod/5.11.10.8200/x64/ZoomInstallerFull.msi'
$out= "C:\ZoomInstallerFull.msi"
Invoke-WebRequest -uri $uri -OutFile $out
msiexec /i $out /qn ZoomAutoUpdate=True zConfig="nogoogle=1" ZConfig="nofacebook=1" /lex zoommsi.log ZoomAutoUpdate="true"
Start-Sleep -Seconds 60

#codigo de salida que indica, la finalizacion de la instalacion
exit 8

<#
A fin de generar mantenimiento en el script, es necesario actualizar la URL en la linea 13/ $uri = 'https://cdn.zoom.us/prod/5.11.10.8200/x64/ZoomInstallerFull.msi'
la cual nos descarga el instalador mas reciente de zoom
#>