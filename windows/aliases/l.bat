@echo off
SET LS_COMMON=--color
SET LS_COMMON=%LS_COMMON% --ignore=NTUSER.DAT*
ls %LS_COMMON% %1
