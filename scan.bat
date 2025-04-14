@echo off
REM Usage: scan_network.bat 192.168.1.0/24
set subnet=%1
powershell -Command "$subnet='%subnet%'; 1..254 | ForEach-Object {Test-Connection -ComputerName ($subnet -replace '0/24',$_) -Count 1 -ErrorAction SilentlyContinue | Select-Object Address}"