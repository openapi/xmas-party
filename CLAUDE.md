# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the **GitHub Christmas Party** repository - a festive, community-driven project designed as a virtual holiday celebration on GitHub. It's not a traditional codebase but rather a creative digital party platform where the main interaction happens through GitHub Issues.

### Core Purpose
- **Issue #1** serves as the official "Guestbook Wall" where visitors leave festive comments, ASCII art, code snippets, and holiday messages
- The repository celebrates developer community spirit through creative GitHub usage
- Encourages community participation through contests (emoji banners, AI-generated content, virtual DJ sets)

## Development Commands

### Build and Deployment
```bash
# Serve the site locally using http-server
make serve
# Note: This uses npx http-server . to serve index.html

# Update and push changes (Santa's magical update)
make push
# Commits all changes with timestamp and pushes to remote
```

### Repository Management
```bash
# Clean workspace (removes SANTA.md)
make clean

# Full setup (creates repo, issues, and files) - for reference only
make all
```

## Architecture and Structure

### File Structure
- **`index.html`** - Professional Christmas Party landing page built with Openapi.com layout, header, and footer
- **`assets/html/layout.html`** - Original Openapi.com layout template (365KB) containing complete page structure
- **`README.md`** - Main party instructions and festive documentation
- **`SANTA.md`** - Whimsical Christmas letter explaining the repository philosophy and party concept
- **`Makefile`** - Contains both functional commands (`push`, `serve`) and documentation of the original setup process
- **`assets/images/`** - Contains header images for the README and landing page

### Key Components
1. **Landing Page** - index.html integrates with Openapi.com's professional layout while featuring Christmas Party content
2. **Layout Integration** - Uses authentic Openapi.com header, navigation, footer, and styling framework
3. **Community Guestbook** - Issue #1 is the primary interaction point for the contest
4. **Festive Documentation** - README and SANTA files provide context and encouragement
5. **Interactive Features** - Landing page includes falling snow animation, Christmas-themed styling, and Konami code easter egg
6. **Automated Workflow** - Makefile handles git operations and local serving

## Development Guidelines

### Content Philosophy
- This is a **party repository**, not a production codebase
- Encourage creativity, festive content, and community interaction
- The Makefile's `push` command automatically commits with "Santa's update" messages
- ASCII art, emoji banners, and holiday-themed content are encouraged

### Working with Issues
- Issue #1 is the main guestbook - treat it as sacred party space
- Additional issues may be created for contests (emoji banners, AI images, virtual DJ sets)
- Community participation is the primary goal

### Git Workflow
- Use `make push` for routine updates (includes automatic timestamped commits)
- The repository encourages frequent, small, festive commits
- Main branch is actively used for the party content

## Technical Notes

### Local Development
- The `index.html` file integrates with Openapi.com's complete layout system
- Uses authentic Openapi.com header, navigation, footer, and Bootstrap-based CSS framework
- Features interactive Christmas-themed animations and styling
- Can be served locally with any static file server using `make serve`
- No build process required for the Christmas Party content

### Layout Structure
- **Header/Navigation**: Complete Openapi.com navigation with Products, Solutions, Resources menus
- **Christmas Content**: Custom Christmas Party sections replace the original MCP content
- **Footer**: Full Openapi.com footer with certifications, links, and company information
- **Responsive Design**: Inherits Openapi.com's responsive Bootstrap framework

### Landing Page Features
- **Professional Integration**: Seamlessly blends Christmas Party content with Openapi.com branding
- **Call-to-Action**: Prominent buttons linking directly to Issue #1 and GitHub repository
- **Contest Information**: Clear explanation of prizes and how to participate
- **Interactive Elements**: 
  - Falling snow animation
  - Christmas glow animations on titles
  - Festive card hover effects
  - Bouncing emoji animations
  - ASCII Christmas tree
  - Konami code easter egg (↑↑↓↓←→←→BA)
- **Christmas Theme**: Red and green color scheme integrated with Openapi.com design

### Content Management
- `assets/html/layout.html` contains the original Openapi.com page template for reference
- SANTA.md can be regenerated/removed with `make clean`
- README.md contains the main party instructions and should be preserved
- Asset images are stored in `assets/images/`
- Landing page uses the header image from assets/images/readme-header.png