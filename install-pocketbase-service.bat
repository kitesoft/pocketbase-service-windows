@ECHO OFF

REM STOPPING SERVICE IF IT EXISTS
ECHO Cleaning up old service before installing...

pocketbase-service stop
pocketbase-service uninstall

ECHO Installing Pocketbase service...

pocketbase-service install

ECHO Pocketbase service installed!

TIMEOUT 3

ECHO Starting Pocketbase service...

net start "pocketbase-service"

ECHO Pocketbase service started...

TIMEOUT 3

ECHO http://127.0.0.1:8090 - if pb_public directory exists, serves the static content from it (html, css, images, etc.)
ECHO http://127.0.0.1:8090/_/ - Admin dashboard UI
ECHO http://127.0.0.1:8090/api/ - REST API

TIMEOUT 5

ECHO Pocketbase service is installed, started, and will automatically run on boot...
ECHO To uninstall, just open uninstall-pocketbase-service.bat
ECHO Installation Successful! You may exit this installer...

TIMEOUT 120
EXIT