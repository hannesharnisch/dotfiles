#!/bin/bash
# Install ansible
python3 -m pip install --upgrade pip
python3 -m pip install ansible

# Execute ansible setup playbook
cd $(chezmoi source-path)/ansible
ansible-galaxy install -r requirements.yaml
ansible-playbook setup-playbook.yaml --ask-become-pass
