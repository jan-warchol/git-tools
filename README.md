Sensible git
============

![Screenshot of sensible-dotfiles](https://i.imgur.com/a4auwdx.png)

Most common aliases and sensible config options for a more pleasant git
experience.


Installation
------------

Clone the repo and link the configuration file:

```bash
git clone https://github.com/jan-warchol/sensible-git
mv -i ~/.gitconfig{,.old}  # backup your current config
ln -s $(pwd)/sensible-git/.gitconfig ~/.gitconfig
```


Features
--------

Here's a summary of the most interesting settings:

- aliases for displaying **awesome [logs](.gitconfig#L32)**
  (see [screenshot](https://i.imgur.com/a4auwdx.png)),
- a dozen of common shorthands, including `ci`, `co`, `br` and `st`,
- improved output layout and coloring for `status`, `blame` and `log`,
- better default behaviour in case of merge conflicts, file copies etc.


Other good stuff
----------------

See [sensible dotfiles](https://github.com/jan-warchol/sensible-dotfiles/) for
a collection of settings for other command-line tools.

