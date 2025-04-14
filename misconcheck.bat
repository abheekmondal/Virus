@echo off
wmic service get name,pathname | findstr /i /v "C:\Windows"
echo Checking writable directories...
dir /s /b "C:\Program Files\" 2>nul | findstr /i ".*bat$\|.*exe$"