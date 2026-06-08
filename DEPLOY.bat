@echo off
title GitHub Profile Deployer

echo.
echo ╔═══════════════════════════════════════════════════╗
echo ║       GITHUB PROFILE DEPLOYER v1.0               ║
echo ║       Dark Brutalist Theme                        ║
echo ╚═══════════════════════════════════════════════════╝
echo.

echo 📝 Step 1: Open this file in a text editor and fill in:
echo    - YOUR_GITHUB_USERNAME (line 15)
echo    - YOUR_EMAIL (line 17)
echo    - YOUR_NAME (line 19)
echo.

echo 🌐 Step 2: Go to https://github.com and create a NEW repository:
echo    Name it exactly: YOUR_USERNAME.github.io
echo    (Example: if your username is "cooldev", name it "cooldev.github.io")
echo.

echo 🔑 Step 3: Generate a Personal Access Token:
echo    - Go to: Settings > Developer Settings > Personal Access Tokens
echo    - Click: Generate new token (classic)
echo    - Select: repo (full control)
echo    - Copy the token and paste it below
echo.

set /p GITHUB_TOKEN="Paste your GitHub Token here: "

echo.
echo 🚀 Deploying to GitHub Pages...
echo.

REM Initialize git
git init
git add .
git commit -m "🚀 Initial commit - Dark Brutalist GitHub Profile"

REM Add remote (replace with your actual repo URL)
git remote add origin https://github.com/YOUR_USERNAME/YOUR_USERNAME.github.io.git

REM Push to GitHub
git push -u origin main --force

echo.
echo ✅ Done! Your site should be live at:
echo    https://YOUR_USERNAME.github.io
echo.
echo ⏳ Note: It may take 1-2 minutes to go live.
echo.

pause