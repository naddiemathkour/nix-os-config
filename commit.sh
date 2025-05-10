#!/bin/sh

SOURCE_DIR="/etc/nixos/"
DEST_DIR="~/Documents/GitHub/nix-os-config/"

# Define Commit Message
DATE=$(date +"%m-%d-%Y")
COMMIT_MSG="Nix config update: $DATE"

# Remove original files
rm -rf configuration.nix hardware-configuration.nix

# Copy files
cp -r "$SOURCE_DIR"/* "$DEST_DIR"

# Navigate to git folder
cd "$DEST_DIR"

# Perform git operations
git add .
git commit -m "$COMMIT_MSG"
git push
