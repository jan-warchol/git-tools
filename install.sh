#!/bin/bash
set -e

REPO_PATH="$(cd $(dirname "$0"); pwd)"
gitconfig="$HOME/.gitconfig"
target="$REPO_PATH/.gitconfig"
_strong="\033[1;97m"
_reset="\033[0m"

# ensure this repository is in PATH
if [[ ! "$PATH" == *$REPO_PATH* ]]; then
    echo -e "\nexport PATH=\"\$PATH:$REPO_PATH\"" >> ~/.bashrc;
fi

# add a hook for replacing regular git prompt with recursive one
echo 'export PS1=$(echo "$PS1" | sed "s/__git_ps1/__git_recursive_ps1/")' >> ~/.bashrc

if [ "$gitconfig" -ef "$target" ]; then
    echo -e "Link already exists:\n  $gitconfig -> $target"
else
    # read from existing config to re-apply after installation
    NAME="$(git config --get user.name || true)"
    EMAIL="$(git config --get user.email || true)"

    # make a backup
    if [ -e "$gitconfig" ]; then
        mv -i "$gitconfig" "$gitconfig.old"
        echo "Existing config file renamed to $gitconfig.old"
    fi

    # install and configure name & email
    echo -e "Creating link:\n  $gitconfig -> $target"
    ln -s "$target" "$gitconfig"
    [ -n "$NAME" ] && git config --global user.name "$NAME"
    [ -n "$EMAIL" ] && git config --global user.email "$EMAIL"
fi

echo -e "Installation complete. ${_strong}Reopen${_reset} your terminal to see effects."
