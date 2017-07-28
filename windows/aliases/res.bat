@echo off
IF [%1]==[] ECHO No service specified to restart!

net stop %1
net start %1

