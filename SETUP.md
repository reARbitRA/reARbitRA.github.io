# 🎨 Dark Brutalist GitHub Profile - Setup Guide

## QUICK START (5 Minutes)

### Step 1: Create Your GitHub Repository

1. Go to [github.com/new](https://github.com/new)
2. **Repository name**: `YOUR_USERNAME.github.io`
   - ⚠️ Replace `YOUR_USERNAME` with your actual GitHub username
   - Example: if your username is `coder123`, name it `coder123.github.io`
3. Select **Public**
4. Click **Create Repository** (leave all options default)

### Step 2: Upload Your Files

**Option A: Drag & Drop (Easiest)**
1. On your new repo page, click **"uploading an existing file"**
2. Drag ALL files from the `github-profile` folder into the browser
3. Click **Commit changes**

**Option B: Git Command Line**
```bash
cd github-profile
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_USERNAME.github.io.git
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository **Settings**
2. Scroll down to **GitHub Pages**
3. Set **Source** to: `Deploy from a branch`
4. Set **Branch** to: `main` / `(root)`
5. Click **Save**
6. Wait 1-2 minutes

### Step 4: View Your Site! 🎉

Go to: `https://YOUR_USERNAME.github.io`

---

## CUSTOMIZING YOUR PROFILE

### Edit `index.html`

Find and replace these values:

| Find | Replace With |
|------|--------------|
| `YOUR NAME` | Your actual name |
| `YOUR_USERNAME` | Your GitHub username |
| `Developer / Designer` | Your job title |
| Project descriptions | Your actual projects |
| Skills list | Your actual skills |
| Email | Your email |
| LinkedIn URL | Your LinkedIn |

### Change Colors

Edit the `:root` section in the CSS:

```css
:root {
    --acid: #ccff00;      /* Change to any color you like! */
    --void: #050505;       /* Background */
    --crimson: #ff003c;    /* Accent */
}
```

Popular alternatives:
- **Cyberpunk**: `--acid: #00f0ff;`
- **Neon Pink**: `--acid: #ff00ff;`
- **Matrix Green**: `--acid: #00ff00;`
- **Gold**: `--acid: #ffd700;`

### Add More Projects

Copy this block and add more:

```html
<div class="project-card">
    <h3>Project Name</h3>
    <p>Description of your project.</p>
    <div class="project-links">
        <a href="LINK_TO_CODE" target="_blank">Source Code</a>
        <a href="LINK_TO_DEMO" target="_blank">Live Demo</a>
    </div>
</div>
```

### Add Social Links

Edit the "Connect" section and replace `#` with your actual links:

```html
<a href="https://twitter.com/YOUR_USERNAME" class="link-card" target="_blank">
```

---

## EDITING YOUR README (Profile Section)

The `README.md` file appears on your GitHub profile page.

1. Create a **separate** repository named exactly `YOUR_USERNAME`
   - Example: if your GitHub is `coder123`, create `coder123/coder123`
2. Upload `README.md` there
3. It will appear on your GitHub profile!

### Customize README

Replace these values in README.md:

| Find | Replace With |
|------|--------------|
| `YOUR_USERNAME` | Your GitHub username |
| `your.email@example.com` | Your email |
| `[Your Name]` | Your name |
| Skill badges | Your actual skills |
| Achievement links | Your actual badges |

---

## FAQ

### Q: Why isn't my site loading?
**A:** Wait 2-5 minutes. GitHub Pages can take time to build. Also check Settings > Pages to confirm it's enabled.

### Q: Can I use a custom domain?
**A:** Yes! In Settings > Pages > Custom Domain, enter your domain (e.g., mysite.com)

### Q: How do I update my site?
**A:** Just push new changes to the repo and they'll go live automatically!

### Q: The cursor isn't working on mobile
**A:** That's intentional! Mobile devices don't use mouse cursors.

---

## FILES INCLUDED

```
github-profile/
├── index.html      ← Main website (this loads as your site)
├── README.md       ← GitHub profile page content
├── DEPLOY.bat      ← Windows deployment script
├── DEPLOY.sh       ← Mac/Linux deployment script
└── SETUP.md        ← This file
```

---

## CREDITS

Built with ❤️ using:
- GSAP Animations
- Canvas Particle System
- JetBrains Mono Font
- Dark Brutalist Design

---

**Questions?** Create an issue on GitHub or reach out!