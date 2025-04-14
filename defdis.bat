@echo off
REM Requires admin rights
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"