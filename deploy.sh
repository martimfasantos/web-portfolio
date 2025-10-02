#!/bin/bash

# Exit on any error
set -e

echo "🚀 Starting deployment process..."

# Check if we're in the right directory
if [ ! -f "config.yaml" ]; then
    echo "❌ Error: config.yaml not found. Make sure you're in the root of the Hugo site."
    exit 1
fi

# Ask for commit message if not provided as argument
if [ -z "$1" ]; then
    echo "📝 Enter your commit message:"
    read -r msg
    if [ -z "$msg" ]; then
        echo "❌ Error: Commit message cannot be empty."
        exit 1
    fi
else
    msg="$*"
fi

echo "📝 Using commit message: $msg"

# Build the site
echo "🔨 Building the site..."
hugo

# Check if public directory exists and is a git repository
if [ ! -d "public" ]; then
    echo "❌ Error: public directory not found. Make sure the submodule is initialized."
    echo "Run: git submodule update --init --recursive"
    exit 1
fi

if [ ! -e "public/.git" ]; then
    echo "❌ Error: public directory is not a git repository. Make sure the submodule is properly set up."
    echo "Run: git submodule update --init --recursive"
    exit 1
fi

# Navigate to public directory
cd public

# Check if there are any changes in the public directory
if git diff --quiet && git diff --staged --quiet; then
    echo "ℹ️  No changes in the generated site to deploy."
    cd ..
    
    # Check if there are changes in the main repository
    if git diff --quiet && git diff --staged --quiet; then
        echo "ℹ️  No changes in the main repository either."
        exit 0
    else
        echo "📦 Changes found in main repository, committing..."
        git add .
        git commit -m "$msg"
        git push origin main
        echo "✅ Main repository updated!"
        exit 0
    fi
fi

# Add changes to git in public directory
echo "📦 Adding changes to GitHub Pages repository..."
git add .

echo "💾 Committing to GitHub Pages repository: $msg"
git commit -m "$msg"

# Push to GitHub Pages repository
echo "🌐 Pushing to GitHub Pages repository..."
git push origin main

# Return to main repository
cd ..

# Update submodule reference and commit changes in main repository
echo "🔄 Updating main repository..."
git add .
git commit -m "$msg"
git push origin main

echo "✅ Deployment complete!"
echo "🌍 Your site should be live at: https://martimfasantos.github.io"