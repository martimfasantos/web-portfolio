# Web Portfolio

This repository contains the source code for my personal web portfolio.

## 📁 Repository Structure

This web portfolio is configured to deploy to GitHub Pages using a git submodule setup:

- **Main Repository**: Contains the source code, content, and configuration
- **Submodule (`public/`)**: Points to [`martimfasantos.github.io`](https://github.com/martimfasantos/martimfasantos.github.io.git) repository for GitHub Pages deployment

## 🚀 Quick Start

### Setup

1. **Clone the repository with submodules:**
   ```bash
   git clone --recursive https://github.com/martimfasantos/web-portfolio.git
   cd web-portfolio
   ```

2. **If you've already cloned without submodules, initialize them:**
   ```bash
   git submodule update --init --recursive
   ```

### Local Development

1. **Start the development server:**
   ```bash
   hugo server -D
   ```

2. **View your site:**
   Open your browser and navigate to `http://localhost:1313`

## 🌐 Deployment

This site uses a two-repository setup for GitHub Pages deployment:

### Manual Deployment

1. **Build the site:**
   ```bash
   hugo
   ```

2. **Navigate to the public directory:**
   ```bash
   cd public
   ```

3. **Commit and push changes to the submodule:**
   ```bash
   git add .
   git commit -m "Update site content"
   git push origin main
   ```

4. **Return to the main repository and update the submodule reference:**
   ```bash
   cd ..
   git add public
   git commit -m "Update submodule reference"
   git push origin main
   ```

### Automated Deployment Script

You can use the provided `deploy.sh` script to automate the deployment process:

```bash
./deploy.sh
```

**Live Site**: [martimfasantos.github.io](https://martimfasantos.github.io)