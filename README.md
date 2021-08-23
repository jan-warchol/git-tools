Sensible git
============

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

Edit your prompt definition to include a call to `__git_submodules_ps1`.
If you use magicmonty/bash-git-prompt, add this to your `.bashrc`:

```bash
GIT_PROMPT_ORIGINAL_END="\n\[\033[0;37m\]\$(date +%H:%M)\[\033[0;0m\] $ "
GIT_PROMPT_END=" \$(__git_submodules_ps1)$GIT_PROMPT_ORIGINAL_END"
```

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
