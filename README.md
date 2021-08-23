Git ninja tools
===============

![Screenshot of sensible-dotfiles](https://i.imgur.com/a4auwdx.png)

Most common aliases and sensible config options for a more pleasant git
experience.


Installation
------------

Clone the repo:

```bash
git clone https://github.com/jan-warchol/git-ninja-tools
```

Add it to your PATH to make new git commands available:

```bash
echo 'export PATH="$PATH:'$PWD/git-ninja-tools'"' >> ~/.bashrc;
```

Import settings to your `.gitconfig`:

```bash
echo -e "[include]\n\tpath = $PWD/git-ninja-tools/.gitconfig" >> ~/.gitconfig
```

### Customizing your prompt

Edit your prompt definition to include a call to `__git_submodules_ps1`.

If you don't have any cutom prompt setup, use the recommended prompt config -
paste the following to your `.bashrc`:

```bash
# Using \[ and \] is necessary to prevent weird behavior (lines overlapping).
blue="\[\e[94m\]"
cyan="\[\e[96m\]"
reset="\[\e[0m\]"
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM="verbose git"
export PS1="${blue}\u ${cyan}\w${reset}\$(__git_ps1) \$(__git_submodules_ps1)\n\\$ "
```

If you already use magicmonty/bash-git-prompt, add this to your `.bashrc`:

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
- `git detailed-submodule-status` - see how current submodule status is related
  to what is recorded in the superproject (show relevant history graph).
  Especially helpful when there are merge conflicts.
- Common aliases/shorthands, including [`ci`, `co`, `br` and `st`](.gitconfig#L7)
- Additional log aliases [`la`, `ll`, `lp`](.gitconfig#L30) to show more
  information from repo history.

Settings that should have been the default:
- improved output layout and coloring for `status`, `blame` and `log`,
- better display of merge conflicts, info about copied files etc.


Other good stuff
----------------

See [sensible dotfiles](https://github.com/jan-warchol/sensible-dotfiles/) for
a collection of settings for other command-line tools.
