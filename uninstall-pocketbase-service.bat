@ECHO OFF

ECHO Stopping Pocketbase service..
.
pocketbase-service stop

ECHO Uninstalling Pocketbase service...

pocketbase-service uninstall

ECHO Pocketbase service uninstalled!
ECHO To reinstall, just open install-pocketbase-service.bat
ECHO You may exit this uninstaller now...

TIMEOUT 120
EXIT