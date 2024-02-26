setlocal enabledelayedexpansion

set "tempDir=%TEMP%\ungoogled-chromium"

REM Create temporary directory
if not exist "%tempDir%" mkdir "%tempDir%"

curl -s https://api.github.com/repos/ungoogled-software/ungoogled-chromium-windows/releases/latest > "%tempDir%\tmp.json"

for /f "tokens=2 delims=:," %%G in ('type "%tempDir%\tmp.json" ^| findstr /r /c:"\"tag_name\""') do (
    set "TAG=%%~G"
)

rem Remove leading and trailing spaces from TAG variable
set "TAG=!TAG:~1,-1!"
rem Remove quotes from TAG variable
set "TAG=!TAG:"=!"

curl -L "https://github.com/ungoogled-software/ungoogled-chromium-windows/releases/download/%TAG%/ungoogled-chromium_%TAG%_installer_x64.exe" -o "%tempDir%\ungoogled-chromium_installer_x64.exe"

if not exist "%LOCALAPPDATA%\Chromium\User Data\Default" mkdir "%LOCALAPPDATA%\Chromium\User Data\Default"

copy /y "initial_preferences" "%LOCALAPPDATA%\Chromium\User Data\Default"

start /b /wait "" "%tempDir%\ungoogled-chromium_installer_x64.exe" /S

REM Cleanup temporary files
if exist "%tempDir%" rd /s /q "%tempDir%"

endlocal

