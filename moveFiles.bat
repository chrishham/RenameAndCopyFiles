@echo off
REM In production replace %~dp0(current path) with real servers
set SourceServer=%~dp0
set SourcePath=\SourceFolder\
set DestinationServer=%~dp0
set DestinationPath=\DestFolder\

set dateString=%date:~10,4%%date:~7,2%%date:~4,2%

Setlocal EnableDelayedExpansion
for %%F in (%SourceServer%%SourcePath%*) do (
  set oldFileName=%%~nxF
  set part1=!oldFileName:~0,9!
  if !part1!==EKO2_011_ (
    set newFileName=!part1!!dateString!_!oldFileName:~9!
    REM In production replace copy with move
    copy %%F !DestinationServer!!DestinationPath!!newFileName!
  )
)