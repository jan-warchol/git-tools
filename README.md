Git tools
=========

![Screenshot of sensible-dotfiles](https://i.imgur.com/a4auwdx.png)

Most common aliases and sensible config options for a more pleasant git
experience.


Installation
------------

### Automatic

Clone the repo and run installation script:

```bash
git clone https://github.com/jan-warchol/git-tools
./git-tools/install.sh
```

### Manual

1. Clone this repo
1. Add it to your PATH to make new git commands available
1. Source `bash-completion.sh` in your bash configuration to enable
   autocompletion for new commands
1. Import settings from `.gitconfig` into your git configuration file
1. Edit your `PS1` variable to include `\$(__git_ps1)`


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
