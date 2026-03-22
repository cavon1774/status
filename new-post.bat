@echo off
echo ============================================
echo   Create New Status Wall Post
echo ============================================
echo.

REM Get the folder where this .bat file is located
cd /d "%~dp0"

REM Set posts folder relative to script location
set POSTS_PATH=%CD%\_posts

REM Check if _posts folder exists, create if not
if not exist "%POSTS_PATH%" (
    echo [INFO] _posts folder not found. Creating it...
    mkdir "%POSTS_PATH%"
)

echo Posts folder: %POSTS_PATH%
echo.

set /p title="Enter post title (or press enter for none): "
set /p mood="Enter mood (calm/happy/excited/thoughtful/tired/creative/focused) or press enter for none: "
set /p pin="Pin this post to sidebar? (y/n): "

:: Get current date/time formatted for Jekyll
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "filenameDate=%YYYY%-%MM%-%DD%"
set "fullDate=%YYYY%-%MM%-%DD% %HH%:%Min%:%Sec% -0500"

:: Create slug
set "slug=%title%"
set "slug=%slug: =-%"

:: Use absolute path to _posts folder
set "filename=%POSTS_PATH%\%filenameDate%-%slug%.md"

echo.
echo Creating file: %filename%
echo.

:: Delete file if it exists (start fresh)
if exist "%filename%" del "%filename%"

:: Write YAML front matter line by line (MORE RELIABLE)
echo --- >> "%filename%"
echo layout: post >> "%filename%"
echo title: "%title%" >> "%filename%"
echo date: %fullDate% >> "%filename%"
if not "%mood%"=="" echo mood: %mood% >> "%filename%"
if /i "%pin%"=="y" echo pin: true >> "%filename%"
echo --- >> "%filename%"
echo. >> "%filename%"
echo Write your status here... >> "%filename%"

:: Verify file was created
if exist "%filename%" (
    echo.
    echo [SUCCESS] File created successfully!
    echo.
    echo File contents:
    echo ============================================
    type "%filename%"
    echo ============================================
    echo.
    echo Opening in Notepad...
    notepad "%filename%"
) else (
    echo.
    echo [ERROR] File was NOT created!
    echo.
    echo Debug Info:
    echo   Script Location: %CD%
    echo   Posts Path: %POSTS_PATH%
    echo   Filename: %filename%
)

pause