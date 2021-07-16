#!/bin/bash

set -e

REPO_PATH="$(cd $(dirname "$0"); pwd)"
gitconfig="$HOME/.gitconfig"
target="$REPO_PATH/.gitconfig"

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
    echo "Installation complete."
fi
