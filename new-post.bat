@echo off
set /p title="Enter post title (or press enter for none): "
set /p mood="Enter mood (calm/happy/excited/thoughtful/tired/creative/focused) or press enter for none: "

:: Get current date/time formatted for Jekyll
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "filenameDate=%YYYY%-%MM%-%DD%"
set "fullDate=%YYYY%-%MM%-%DD% %HH%:%Min%:%Sec% -0500"

:: Create slug
set "slug=%title%"
set "slug=%slug: =-%"

set "filename=_posts\%filenameDate%-%slug%.md"

:: Create file with mood if provided
if "%mood%"=="" (
(
echo ---
echo layout: post
echo title: "%title%"
echo date: %fullDate%
echo ---
echo.
echo Write your status here...
) > "%filename%"
) else (
(
echo ---
echo layout: post
echo title: "%title%"
echo date: %fullDate%
echo mood: %mood%
echo ---
echo.
echo Write your status here...
) > "%filename%"
)

echo Created: %filename%
notepad "%filename%"
pause