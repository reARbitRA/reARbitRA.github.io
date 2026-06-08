@echo off
chcp 65001 >nul
title 🚀 KONKRED GitHub Pages Deployer

echo.
echo ╔═══════════════════════════════════════════════════════════════╗
echo ║        KONKRED GITHUB PROFILE DEPLOYER v1.0                   ║
echo ║        Built for: Ari Miyanji @ reARbitRA                      ║
echo ╚═══════════════════════════════════════════════════════════════╝
echo.

echo 📋 STEP 1: Create GitHub Repository
echo    ┌─────────────────────────────────────────────────────────────┐
echo    │  1. Go to: https://github.com/new                          │
echo    │  2. Repository name: reARbitRA.github.io                   │
echo    │  3. Set to PUBLIC                                          │
echo    │  4. Click "Create repository"                              │
echo    └─────────────────────────────────────────────────────────────┘
echo.

echo 🔑 STEP 2: Get GitHub Personal Access Token
echo    ┌─────────────────────────────────────────────────────────────┐
echo    │  1. Go to: https://github.com/settings/tokens              │
echo    │  2. Click "Generate new token" (classic)                   │
echo    │  3. Select scope: "repo" (full control)                    │
echo    │  4. Generate and COPY the token                            │
echo    └─────────────────────────────────────────────────────────────┘
echo.

set /p TOKEN="Paste your GitHub Token here and press Enter: "

echo.
echo 🚀 STEP 3: Deploying...
echo.

REM Initialize git
git init
git config user.name "Ari Miyanji"
git config user.email "ari@konkred.xyz"

REM Add all files
git add .

REM Commit
git commit -m "🚀 KONKRED Profile - AI Architect & Strategic Innovator"

REM Add remote with token
git remote remove origin 2>nul
git remote add origin https://%TOKEN%@github.com/reARbitRA/reARbitRA.github.io.git

REM Push
echo.
echo ════════════════════════════════════════════════════════════════
git push -u origin main --force
echo ════════════════════════════════════════════════════════════════
echo.

if %errorlevel% equ 0 (
    echo.
    echo ✅ SUCCESS! Your profile is now live at:
    echo    👉 https://reARbitRA.github.io
    echo.
    echo ⏳ Note: It may take 1-2 minutes to go live.
    echo.
) else (
    echo.
    echo ❌ Deployment failed. Please check your token and try again.
    echo.
)

pause
