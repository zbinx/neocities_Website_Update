#!/bin/bash

# Define the Hugo project directory, the git directory and the neocities directory
HUGO_DIR="/home/user/hugoWebsiteDirectory"
GIT_DIR="/home/user/Desktop/websiteRootFolder"
NEOCITIES_DIR="/home/user/Desktop/neocities"

# Generate the static site from the specified directory
echo "Generating the site with Hugo..."
hugo -s "$HUGO_DIR"
sleep 2

# Navigate to the Hugo project directory for Git commands
echo "Adding changes to Git..."
cd "$GIT_DIR"

# Add all changes to Git
git add .
git commit -m "updated site"
git push
sleep 2

# Copy generated files to neocities folder
echo "Copying files to Neocities folder..."
cp -r "$HUGO_DIR/public/"* "$NEOCITIES_DIR"
sleep 2

# Push to Neocities
echo "Pushing to Neocities..."
cd "$NEOCITIES_DIR"
neocities push .
sleep 1

echo "Website update complete!"
