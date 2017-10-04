@echo off
REM ag -i --nogroup -t --color-line-number 35 --color-match 31 --color-path 34 --path-to-ignore %~dp0.ignore %*
ag -i --nogroup -t --color-line-number 35 --color-match 31 --color-path 34 %*
