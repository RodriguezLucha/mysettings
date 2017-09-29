@echo off
ag -i --nogroup -t --color-line-number 35 --color-match 31 --color-path 34 --path-to-ignore %~dp0.ignore %*
