#!/bin/bash
set -e

_strong="\033[1;97m"
_reset="\033[0m"

# ensure this repository is in PATH
REPO_PATH="$(cd $(dirname "$0"); pwd)"
if [[ ! "$PATH" == *$REPO_PATH* ]]; then
    echo -e "\nexport PATH=\"\$PATH:$REPO_PATH\"" >> ~/.bashrc;
fi

# add a hook for replacing regular git prompt with recursive one
echo 'export PS1=$(echo "$PS1" | sed "s/__git_ps1/__git_recursive_ps1/")' >> ~/.bashrc

# configure alias for smart status
git config --global alias.st smart-status

echo -e "Installation complete. ${_strong}Reopen${_reset} your terminal to see effects."
