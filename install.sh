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

# ensure git prompt is enabled
if [[ ! "$PS1" == *__git_ps1* ]]; then
    echo "Enabling git repository status in prompt..."
    cat >> $HOME/.bashrc <<- EOF
		
		# Git-enabled prompt from git-tools repo
		#
		# Note: using \[ and \] is necessary to prevent weird behavior (lines overlapping).
		blue="\[\e[94m\]"
		cyan="\[\e[96m\]"
		reset="\[\e[0m\]"
		# \$(__git_ps1) displays git repository status in the prompt - very handy!
		# Read more: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
		GIT_PS1_SHOWDIRTYSTATE=1
		GIT_PS1_SHOWUPSTREAM="verbose git"
		# we don't want "command not found" errors in case __git_ps1 is not installed
		type __git_ps1 &>/dev/null || function __git_ps1 () { true; }
		export PS1="\${blue}\\u@\\h \${cyan}\\w\${reset}\\\$(__git_ps1)\\n\\\\\$ "
		EOF
fi

echo -e "Installation complete."
echo -e "${_strong}Reopen your terminal${_reset} to see the effects."
