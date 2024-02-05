# Hannes' dotfiles

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/hannesharnisch/dotfiles.git && cd dotfiles && ./bootstrap.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; mkdir dotfiles; cd dotfiles; curl -#L https://github.com/hannesharnisch/dotfiles/tarball/main | tar -xzv --strip-components 1; ./bootstrap.sh;
```