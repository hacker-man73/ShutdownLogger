shutdown /s /f /t 100 /c "The computer %computername% will shutdown in 100 seconds. All logged on users are advised to save their files before the system shutdown. Info: Shutdown on %computername%. Time:  %time%. Date: %date%. Logged on user: %username%."  

echo Shutdown command ran on: %date%,%time%,%computername%,%username% >> C:\Users\%username%\Desktop\ShutdownAppLogger\shutdown.txt"


