@echo off
IF [%1]==[] ECHO Nowhere to navigate!
IF [%1]==[mcode] (
cd /D D:\work\Metascan
)
IF [%1]==[code] (
cd /D D:\work\OESIS
)
IF [%1]==[vim] (
cd /D "C:\Program Files (x86)\Vim"
)
IF [%1]==[~] (
cd /D "C:\Users\Rudy"
)
IF [%1]==[scripts] (
cd /D "F:\Scripts"
)
IF [%1]==[oms] (
cd /D "C:\Program Files (x86)\OPSWAT\Metadefender Core 4"
)
