@echo off
REM Save to "wifi_passwords.txt"
netsh wlan show profiles | findstr "All User Profile" > profiles.txt
for /f "tokens=2 delims=:" %%i in (profiles.txt) do (
  netsh wlan show profile name="%%i" key=clear | findstr "Key Content"
)
del profiles.txt