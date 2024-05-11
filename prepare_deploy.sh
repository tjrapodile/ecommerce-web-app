#!/bin/bash

# Exit script on any error
set -e

# Define the source and target directories
SRC_DIR="src/main/thembis-bold-bite-bazaar"
TARGET_DIR="."

# Copy the relevant files to the root directory
# Exclude the directories and files that are not needed
# Create directories if they do not exist
mkdir -p "$TARGET_DIR/node_modules"
mkdir -p "$TARGET_DIR/.git"
mkdir -p "$TARGET_DIR/build"
mkdir -p "$TARGET_DIR/lib"
mkdir -p "$TARGET_DIR/node"

# Use cp to copy files over
cp -r "$SRC_DIR/"* "$TARGET_DIR"

# Remove the directories and files that are not needed
rm -rf "$TARGET_DIR/node_modules"
rm -rf "$TARGET_DIR/.git"
rm -rf "$TARGET_DIR/.gitattributes"
rm -rf "$TARGET_DIR/.gitignore"
rm -rf "$TARGET_DIR/build"
rm -rf "$TARGET_DIR/lib"
rm -rf "$TARGET_DIR/node"
rm -f "$TARGET_DIR/pom.xml"
rm -f "$TARGET_DIR/readme.md"

# Add all changes to git
git add -A

# Commit the changes (this will be a temporary commit for deployment purposes)
git commit -m "Prepare for deployment"

# Push to Heroku
git push heroku main

# After pushing to Heroku, revert the last commit to restore the project structure
git reset HEAD~ --hard

# End of script