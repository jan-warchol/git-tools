Git ninja tools
===============

![Screenshot of sensible-dotfiles](https://i.imgur.com/a4auwdx.png)

Most common aliases and sensible config options for a more pleasant git
experience.


Installation
------------

Clone the repo and run installation script:

```bash
git clone https://github.com/jan-warchol/git-ninja-tools
./git-ninja-tools/install.sh
```

Manual installation:
1. Clone this repo
1. Add it to your PATH to make new git commands available
1. Source `bash-completion.sh` in your bash configuration to enable
   autocompletion for new commands
1. Import settings from `.gitconfig` into your git configuration file

### Repository & submodules status in prompt

Edit your prompt definition to include a call to `__git_submodules_ps1`:

* If you use the **default system prompt:** paste the following snippet to your
  `.bashrc` to use a simple and elegant prompt that displays status of your
  repo and sumbodules:

  ```bash
  # Using \[ and \] is necessary to prevent weird behavior (lines overlapping).
  blue="\[\e[94m\]"
  cyan="\[\e[96m\]"
  reset="\[\e[0m\]"
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUPSTREAM="verbose git"
  export PS1="${blue}\u ${cyan}\w${reset}\$(__git_ps1) \$(__git_submodules_ps1)\n\\$ "
  ```

* If you use **magicmonty/bash-git-prompt:** add this to your `.bashrc` to
  append submodule status to the prompt before line break:

  ```bash
  GIT_PROMPT_ORIGINAL_END="\n\[\033[0;37m\]\$(date +%H:%M)\[\033[0;0m\] $ "
  GIT_PROMPT_END=" \$(__git_submodules_ps1)$GIT_PROMPT_ORIGINAL_END"
  ```

Features
--------

New commands and common aliases:

- [`git pretty-log`](git-pretty-log) (aliased to `git l`) - clear, readable and
  concise log.
- [`git divergence A B C`](git-divergence) - show how multiple branches `A` `B`
  and `C` differ (relative to common ancestor).
- [`git smart-commit`](git-smart-commit) (aliased to `git ci`) - wrapper for
  `git commit` that automatically includes modified files (if you don't specify
  what to commit) and doesn't require quotes for commit message - example:
  `git ci Update files`
- [`git submodule-details`](git-submodule-details) - see how current submodule
  status is related to what is recorded in the superproject (show relevant
  history graph).  Especially helpful when there are merge conflicts.
- [`git explain-conflict`](git-explain-conflict) - display history of changes
  that led to merge conflict.
- Common aliases/shorthands, including [`co`, `br` and `st`](.gitconfig#L7)
- Additional log aliases [`la`, `ll`, `lp`](.gitconfig#L30) to show more
  information from repo history.

Settings that should have been the default:
- improved output layout and coloring for `status`, `blame` and `log`,
- better display of merge conflicts, info about copied files etc.


Other good stuff
----------------

See [sensible dotfiles](https://github.com/jan-warchol/sensible-dotfiles/) for
a collection of settings for other command-line tools.
