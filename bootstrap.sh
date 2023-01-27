#!/usr/bin/env zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "brew.sh" \
		--exclude ".macos" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	source ~/.zprofile;
}

if [ "$1" = "--force" -o "$1" = "-f" ]; then
	doIt;
else
	read "continue?This may overwrite existing files in your home directory. Are you sure? (y/n) ";
	echo "";
	if [[ $continue =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;

read "continue?This will install applications and change macos defaults. Are you sure? (y/n) ";
echo "";
if [[ $continue =~ ^[Yy]$ ]]; then
	osascript -e 'tell app "Terminal"
		do script "cd ~/dotfiles;./brew.sh;./.macos"
	end tell'
fi;