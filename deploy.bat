@echo off
echo ============================================
echo   DEPLOYING SITE TO HOST
echo ============================================
echo.

REM Change to script directory
cd /d "%~dp0"

REM Step 1: Build
echo Step 1: Building site...
call build.bat
if %errorlevel% neq 0 (
    echo [ERROR] Build failed! Stopping.
    pause
    exit /b %errorlevel%
)

echo.
echo Step 2: Uploading...
echo.

REM Step 2: Upload
call upload.bat

echo.
echo ============================================
echo   DEPLOYMENT COMPLETE!
echo ============================================
pause