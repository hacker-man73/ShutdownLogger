@echo off

set productKeyActivated=true
set logFile="C:\Program Files (x86)\ShutdownAppLogger\shutdown.txt"

if "%productKeyActivated%"=="true" (
    echo Product key activated. Proceeding with shutdown.
    
    rem Check if directory exists
    if not exist "C:\Program Files (x86)\ShutdownAppLogger" (
        echo Creating log directory...
        mkdir "C:\Program Files (x86)\ShutdownAppLogger"
        if errorlevel 1 (
            echo Error: Failed to create directory.
            exit /b 1
        ) else (
            echo Log directory created successfully.
        )
    )

    rem Check if log file exists
    if not exist %logFile% (
        echo Log file not found. Creating new log file...
        echo Shutdown command ran on: %date%,%time%,%computername%,%username% > %logFile%
        if errorlevel 1 (
            echo Error: Failed to create log file.
            exit /b 1
        ) else (
            echo Log file created successfully.
        )
    ) else (
        echo Log file already exists. Appending to existing log...
        echo Shutdown command ran on: %date%,%time%,%computername%,%username% >> %logFile%
        if errorlevel 1 (
            echo Error: Failed to append to log file.
            exit /b 1
        ) else (
            echo Log appended successfully.
        )
    )

    shutdown /s /f /t 100 /c "The computer %computername% will shutdown in 100 seconds. All logged on users are advised to save their files before the system shutdown. Info: Shutdown on %computername%. Time: %time%. Date: %date%. Logged on user: %username%."
) else (
    echo Product key not activated. Exiting script.
    exit
)

:: PATCH NOTES 25.3.24 - used chatgpt to link an if statement to check if a condition is true. version 1.5 is now stable. version 1.4 will be used as a backup for users who wish not to utilise the new if statement (security feature to prevent piracy.)