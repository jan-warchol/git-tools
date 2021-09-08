#!/bin/bash
set -e

REPO_PATH="$(cd $(dirname "$0"); pwd)"
_strong="\033[1;97m"
_reset="\033[0m"

# ensure this repository is in PATH
if [[ ! "$PATH" == *$REPO_PATH* ]]; then
    echo "Adding $REPO_PATH to PATH..."
    echo -e "\nexport PATH=\"\$PATH:$REPO_PATH\"" >> ~/.bashrc;
fi

# ensure autocompletion is loaded
if ! type -t _git_pretty_log 2>/dev/null; then
    echo "Configuring autocompletion..."
    echo -e "\nsource \"$REPO_PATH/bash-completion.sh\"" >> ~/.bashrc;
fi

# ensure git configuration file is included
if ! git config --get-all include.path | grep $REPO_PATH > /dev/null; then
    echo "Adding $REPO_PATH/.gitconfig to ~/.gitconfig..."
    cat >> $HOME/.gitconfig <<- EOF
		[include]
		    path = $REPO_PATH/.gitconfig
		EOF
fi

echo -e "Installation complete."
echo -e "${_strong}Reopen your terminal${_reset} to see effects."
