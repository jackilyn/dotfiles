# dotfiles

## Installation
### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/jackilyn/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

### macOS defaults

When setting up a new Mac, you may want to set some macOS defaults:

```bash
./.macOS
```

[Icons](https://github.com/synthagency/icons-flat-osx)