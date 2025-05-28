@echo off
:: Go to the Git project directory
cd /d D:\practice

echo 🔄 Pulling latest changes from GitHub...
git pull

echo ➕ Adding local changes...
git add .

:: Use current date and time as commit message
for /f %%i in ('powershell -command "Get-Date -Format 'yyyy-MM-dd_HH-mm-ss'"') do set now=%%i
git commit -m "Auto sync - %now%"

echo ⬆️ Pushing changes to GitHub...
git push

echo.
echo ✅ All done! Press any key to exit...
pause >nul
