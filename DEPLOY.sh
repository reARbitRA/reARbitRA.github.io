#!/bin/bash

# ╔═══════════════════════════════════════════════════╗
# ║       GITHUB PROFILE DEPLOYER v1.0               ║
# ║       Dark Brutalist Theme                        ║
# ╚═══════════════════════════════════════════════════╝

echo ""
echo "📝 Step 1: Edit index.html and replace:"
echo "   - 'YOUR NAME' with your actual name"
echo "   - 'YOUR_USERNAME' with your GitHub username"
echo "   - Update project descriptions, skills, links"
echo ""
echo "🌐 Step 2: Create a new GitHub repository named:"
echo "   YOUR_USERNAME.github.io"
echo "   (Example: johndoe -> johndoe.github.io)"
echo ""
echo "🔑 Step 3: Generate a Personal Access Token at:"
echo "   https://github.com/settings/tokens"
echo ""

read -p "Paste your GitHub username: " USERNAME
read -p "Paste your GitHub Token: " TOKEN

echo ""
echo "🚀 Deploying..."
echo ""

git init
git add .
git commit -m "🚀 Initial commit - Dark Brutalist GitHub Profile"
git remote add origin https://$TOKEN@github.com/$USERNAME/$USERNAME.github.io.git
git push -u origin main --force

echo ""
echo "✅ Done! Visit: https://$USERNAME.github.io"
echo "⏳ May take 1-2 minutes to go live."
echo ""