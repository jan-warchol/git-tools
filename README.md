Sensible git
============

![Screenshot of sensible-dotfiles](https://i.imgur.com/a4auwdx.png)

Most common aliases and sensible config options for a more pleasant git
experience.


Installation
------------

Clone the repo and run installation script (it will backup your existing
configuration):

```bash
git clone https://github.com/jan-warchol/sensible-git
./sensible-git/install.sh
```

Manual installation:
1. Clone this repository.
1. Ensure it's in your PATH.  Note that you cannot use tilde `~` in PATH, you
   have to use `$HOME`.
1. In your prompt definition, replace `__git_ps1` with `__git_recursive_ps1`.


Features
--------

Here's a summary of the most interesting settings:

- aliases for displaying **awesome [logs](.gitconfig#L32)**
  (see [screenshot](https://i.imgur.com/a4auwdx.png)),
- a dozen of common shorthands, including `ci`, `co`, `br` and `st`,
- improved output layout and coloring for `status`, `blame` and `log`,
- better default behaviour in case of merge conflicts, file copies etc.
- Your prompt should now show the status of submodules, too.
- Use `git detailed-submodule-status` (or `git st`) to see more information
  about what's happening in the submodules. This is helpful especially when
  there are merge conflicts.


Other good stuff
----------------

See [sensible dotfiles](https://github.com/jan-warchol/sensible-dotfiles/) for
a collection of settings for other command-line tools.
