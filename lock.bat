@echo off
REM Lock the computer immediately
rundll32.exe user32.dll,LockWorkStation

REM Start a hidden PowerShell child process to monitor and re-lock
if "%1"=="child" goto :child

start /B "" "%~f0" child
exit

:child
powershell -Command "while($true) { $isLocked = (Get-CimInstance -ClassName Win32_ComputerSystem).UserName -eq $null; if (-not $isLocked) { rundll32.exe user32.dll,LockWorkStation; Start-Sleep -Seconds 1 } else { Start-Sleep -Seconds 1 } }"