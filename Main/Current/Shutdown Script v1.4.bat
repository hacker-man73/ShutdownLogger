@echo off
echo Shutdown command ran on: %date%,%time%,%computername%,%username% >> "C:\Program Files (x86)\ShutdownAppLogger\shutdown.txt"


shutdown /s /f /t 100 /c "The computer %computername% will shutdown in 100 seconds. All logged on users are advised to save their files before the system shutdown. Info: Shutdown on %computername%. Time:  %time%. Date: %date%. Logged on user: %username%."  


md "C:\Program Files (x86)\ShutdownAppLogger"


:: PATCH NOTES 12.3.24 - script to log files has been corrected. version 1.3 released.
