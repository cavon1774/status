@echo off
echo ============================================
echo   Bulk Add Dates to Draft Files
echo ============================================
echo.

set TODAY=%date:~10,4%-%date:~4,2%-%date:~7,2%
set DRAFTS=%CD%\_drafts
set POSTS=%CD%\_posts

if not exist "%POSTS%" mkdir "%POSTS%"

echo Date: %TODAY%
echo.
echo Moving files from _drafts to _posts...
echo.

for %%f in ("%DRAFTS%\*.md") do (
    set "filename=%%~nxf"
    set "newname=%TODAY%-%%~nxf"
    echo Moving: %%~nxf → !newname!
    move "%%f" "%POSTS%\%TODAY%-%%~nxf"
)

echo.
echo Done! Check _posts/ folder.
pause