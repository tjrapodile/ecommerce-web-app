#!/bin/bash

# Exit script on any error
set -e

# Define the source and target directories
SRC_DIR="src/main/thembis-bold-bite-bazaar"
TARGET_DIR="."

# Copy the relevant files to the root directory
# Exclude the directories and files that are not needed
rsync -av --exclude='node_modules/' --exclude='.git/' --exclude='.gitattributes' --exclude='.gitignore' --exclude='build/' --exclude='lib/' --exclude='node/' --exclude='pom.xml' --exclude='readme.md' "$SRC_DIR/" "$TARGET_DIR"

# Add all changes to git
git add -A

# Commit the changes (this will be a temporary commit for deployment purposes)
git commit -m "Prepare for deployment"

# Push to Heroku
git push heroku main

# After pushing to Heroku, revert the last commit to restore the project structure
git reset HEAD~ --hard

# End of script