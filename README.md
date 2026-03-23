# README

## Setup — macOS

First, sign in to the Mac App Store.

```bash
git clone git@github.com:hjhart/dotfiles ~/.dotfiles
cd ~/.dotfiles
./bin/setup
```

## Setup — Linux

```bash
git clone https://github.com/hjhart/dotfiles ~/dotfiles
~/dotfiles/bin/setup-linux
```

The script will:
- Move the repo to `~/.dotfiles`
- Install system packages via apt (zsh, vim, tmux, rcm, fzf, zsh-autosuggestions, zsh-syntax-highlighting, zoxide)
- Clone Powerlevel10k, zsh-abbr, and zsh-autopair
- Link all dotfiles with `rcup`
- Install Vim plugins via Vundle
- Set zsh as your default shell

After setup, run `p10k configure` to customize your prompt, then start a new shell.
