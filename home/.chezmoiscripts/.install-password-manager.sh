#!/bin/sh

echo "Checking if Passwordmanager needs to be installed"
# exit immediately if password-manager-binary is already in $PATH
type op >/dev/null 2>&1 && exit
echo "Installing Passwordmanager"
case "$(uname -s)" in
Darwin)
    # Installing Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Installing 1password
    /opt/homebrew/bin/brew install --cask 1password
    /opt/homebrew/bin/brew install --cask 1password-cli
    eval $(op signin)
    echo "Passwordmanager all setup"
    ;;
*)
    echo "unsupported OS"
    exit 1
    ;;
esac
