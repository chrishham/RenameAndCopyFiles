@echo off
set SourceServer=%~dp0
set SourcePath=\SourceFolder\
set DestinationServer=%~dp0
set DestinationPath=\DestFolder\

set dateString=%date:~6,4%%date:~3,2%%date:~0,2%

Setlocal EnableDelayedExpansion
for %%F in (%SourceServer%%SourcePath%*) do (
    set oldFileName=%%~nxF
    set newFileName=!oldFileName:~0,9!!dateString!_!oldFileName:~9!
    copy %%F !DestinationServer!!DestinationPath!!newFileName!
)