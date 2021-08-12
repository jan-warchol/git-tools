Installation
------------

Clone the repo and run installation script:

```bash
git clone https://github.com/jan-warchol/git-submodule-tools
./git-submodule-tools/install.sh
```

Manual installation:
1. Clone this repository.
1. Ensure it's in your PATH.  Note that you cannot use tilde `~` in PATH, you
   have to use `$HOME`.
1. In your prompt definition, replace `__git_ps1` with `__git_recursive_ps1`.


Usage
-----

* Your prompt should now show the status of submodules, too.
* Use `git smart-status` (or `git st`) to see more detailed information about
  what's happening in the submodules. This is helpful especially when there are
  merge conflicts.
