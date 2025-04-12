#!/bin/sh

# Installing Xcode command line tools
xcode-select --install
# Accept License
sudo xcodebuild -license accept
# Confirm install
echo "Command line tools installation path: $(xcode-select -p)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dotfiles
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply hannesharnisch
