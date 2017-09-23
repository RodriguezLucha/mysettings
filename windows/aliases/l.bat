@echo off
SET LS_COMMON=--color
SET LS_COMMON=%LS_COMMON% --ignore=NTUSER.DAT*
"C:\Program Files\Git\usr\bin\ls.exe" %LS_COMMON% %1
