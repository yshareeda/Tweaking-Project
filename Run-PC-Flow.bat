@echo off
cd /d "%~dp0"
set "TARGET=winutil.ps1"
if exist "%~dp0PC-Flow.ps1" set "TARGET=PC-Flow.ps1"
if not exist "%~dp0%TARGET%" (
  echo Could not find PC-Flow.ps1 or winutil.ps1 in this folder.
  echo Build it first by running Build-and-Run.bat
  pause
  exit /b
)
echo Launching %TARGET% ...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0%TARGET%"
