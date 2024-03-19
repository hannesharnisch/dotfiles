# Hannes' Dotfiles

The following git repositoriy contains dotfiles for setting up my macbook with the [chezmoi](https://www.chezmoi.io/) dotfile manager. 

## Quick Start

**One line install**

```
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply hannesharnisch
```

**Other options**

For other options please look at [this guide](https://www.chezmoi.io/quick-start/).


## Description

Appart from the dotfiles which are managed by chezmoi. The `run_before_setup` skript contains all the necessary steps to install ansible and execute the ansible playbook that installs and configures the applications. 
The installation is done via Brewfile and the configuration with an extensive list of macos-defaults.

The Brewfile with all the applications can be found under the ansible folder. 

Most user specific application and macos settings can be directly accessed in the macos-defaults/defaults under the ansible folder. 
