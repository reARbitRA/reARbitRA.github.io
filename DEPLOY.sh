#!/bin/bash

# ╔═══════════════════════════════════════════════════════════════╗
# ║        KONKRED GITHUB PROFILE DEPLOYER v1.0                   ║
# ║        Built for: Ari Miyanji @ reARbitRA                      ║
# ╚═══════════════════════════════════════════════════════════════╝

echo ""
echo "🚀 Deploying KONKRED Profile for Ari Miyanji..."
echo ""

# Initialize git
git init
git config user.name "Ari Miyanji"
git config user.email "ari@konkred.xyz"
git add .
git commit -m "🚀 KONKRED Profile - AI Architect & Strategic Innovator"

# Push to GitHub Pages
git remote remove origin 2>/dev/null
git remote add origin https://github.com/reARbitRA/reARbitRA.github.io.git
git branch -M main
git push -u origin main --force

echo ""
echo "✅ Done! Visit: https://reARbitRA.github.io"
echo "⏳ May take 1-2 minutes to go live."
echo ""
