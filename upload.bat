@echo off
echo ============================================
echo   Uploading to Host via WinSCP...
echo ============================================
echo.

REM --- CONFIGURATION ---
set SESSION_NAME=YourSessionName
set REMOTE_PATH=/_public_html/
REM ---------------------

REM Change to the folder where this .bat file is located
cd /d "%~dp0"

REM Get the FULL absolute path to _site folder (use forward slashes for WinSCP)
set SITEPATH=%CD%\_site
set SITEPATH=%SITEPATH:\=/%

echo Current Directory: %CD%
echo Site Path: %SITEPATH%
echo.

REM Check if _site folder exists
if not exist "%CD%\_site" (
    echo [ERROR] _site folder not found!
    echo Please run build.bat first.
    pause
    exit /b 1
)

echo _site folder found! Starting upload...
echo.

REM Run WinSCP with forward-slash path (no quotes around path)
"C:\Users\%USERNAME%\AppData\Local\Programs\WinSCP\WinSCP.com" /command "open %SESSION_NAME%" "synchronize remote -delete %SITEPATH% %REMOTE_PATH%" "exit"

echo.
echo Exit Code: %errorlevel%

if %errorlevel% equ 0 (
    echo.
    echo [SUCCESS] Upload complete!
) else (
    echo.
    echo [ERROR] Upload failed! See messages above.
)

echo.
pause