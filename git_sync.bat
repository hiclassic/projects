@echo off
:: Change to your repo directory
cd /d C:\Users\Student\Desktop\id_1287983

echo Pulling latest changes...
git pull

echo Adding local changes...
git add .

:: Auto-generate commit message with current date and time
for /f %%i in ('powershell -command "Get-Date -Format 'yyyy-MM-dd_HH-mm-ss'"') do set now=%%i
git commit -m "Sync update - %now%"

echo Pushing to GitHub...
git push

echo.
echo ✅ Pull and push complete! Press any key to exit...
pause >nul
