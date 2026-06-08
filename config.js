// ═══════════════════════════════════════════════════════
//     CUSTOMIZE YOUR PROFILE HERE - EASY EDIT SECTION
// ═══════════════════════════════════════════════════════

const CONFIG = {
    // 👤 YOUR INFO
    name: "YOUR NAME",
    title: "Developer / Designer",
    status: "Available for projects",
    
    // 📝 ABOUT SECTION
    about: "Building the future, one line of code at a time.",
    
    // 🛠️ SKILLS (add or remove items)
    skills: [
        "Python",
        "JavaScript", 
        "C++",
        "HTML/CSS",
        "React",
        "Git",
        "Unity"
    ],
    
    // 📂 PROJECTS
    projects: [
        {
            name: "Project One",
            description: "Description of your awesome project.",
            codeLink: "#",
            demoLink: "#"
        },
        {
            name: "Project Two", 
            description: "Another great project description.",
            codeLink: "#",
            demoLink: "#"
        }
    ],
    
    // 📊 STATS
    stats: {
        contributions: "000",
        repositories: "000", 
        yearsCoding: "0.0"
    },
    
    // 🔗 SOCIAL LINKS
    links: {
        github: "https://github.com/YOUR_USERNAME",
        linkedin: "https://linkedin.com/in/YOUR_USERNAME",
        email: "your.email@example.com",
        twitter: "https://twitter.com/YOUR_USERNAME"
    },
    
    // 🎨 COLORS (change these to customize)
    colors: {
        acid: "#ccff00",      // Main accent color
        void: "#050505",       // Background
        crimson: "#ff003c",    // Secondary accent
        charcoal: "#1a1a1a"    // Card backgrounds
    }
};

// ═══════════════════════════════════════════════════════
//     DON'T EDIT BELOW UNLESS YOU KNOW WHAT YOU'RE DOING
// ═══════════════════════════════════════════════════════

// Auto-generate the page with your config
document.addEventListener('DOMContentLoaded', () => {
    // Update name and title
    document.querySelector('.header h1').textContent = CONFIG.name;
    document.querySelector('.header .subtitle').textContent = `// ${CONFIG.title}`;
    document.querySelector('.status span:last-child').textContent = CONFIG.status;
    
    // Update about
    document.querySelector('.about-text').textContent = CONFIG.about;
    
    // Update skills
    const skillsGrid = document.querySelector('.skills-grid');
    skillsGrid.innerHTML = CONFIG.skills.map(skill => 
        `<div class="skill-tag">${skill}</div>`
    ).join('');
    
    // Update projects
    const projectsContainer = document.querySelector('.project-card')?.parentElement;
    if (projectsContainer && CONFIG.projects.length > 0) {
        projectsContainer.innerHTML = CONFIG.projects.map(p => `
            <div class="project-card">
                <h3>${p.name}</h3>
                <p>${p.description}</p>
                <div class="project-links">
                    <a href="${p.codeLink}" target="_blank">Source Code</a>
                    <a href="${p.demoLink}" target="_blank">Live Demo</a>
                </div>
            </div>
        `).join('');
    }
    
    // Update stats
    document.querySelectorAll('.stat-number')[0].textContent = CONFIG.stats.contributions;
    document.querySelectorAll('.stat-number')[1].textContent = CONFIG.stats.repositories;
    document.querySelectorAll('.stat-number')[2].textContent = CONFIG.stats.yearsCoding;
    
    // Update links
    const linkCards = document.querySelectorAll('.link-card');
    if (linkCards[0]) linkCards[0].href = CONFIG.links.github;
    if (linkCards[1]) linkCards[1].href = CONFIG.links.linkedin;
    if (linkCards[2]) linkCards[2].href = `mailto:${CONFIG.links.email}`;
    
    // Update page title
    document.title = `${CONFIG.name} | Dev Profile`;
});