#!/usr/bin/env zsh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install stow
stow . --adopt
source ~/.zprofile;

# Install Homebrew bundle
brew bundle

# Run the macOS setup
bash .macos