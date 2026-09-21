# Virgulilla

Personal shell and application configuration, versioned directly in `$HOME` with a bare Git repository at `~/.cfg`.

Inspired by [Atlassian's dotfiles tutorial](https://www.atlassian.com/git/tutorials/dotfiles).

## Requirements

- Git and Bash or Zsh.
- SSH access to [chamini2/virgulilla](https://github.com/chamini2/virgulilla).
- Install the applications configured by your dotfiles separately.

## Start a new repository

**Use this section once; for an existing repository, skip to installation.**

```sh
git init --bare "$HOME/.cfg"
alias config='git --git-dir="$HOME/.cfg" --work-tree="$HOME"'
config config --local status.showUntrackedFiles no
config symbolic-ref HEAD refs/heads/main
printf '/.cfg/\n' >> "$HOME/.cfg/info/exclude"
```

Add the alias above to `~/.zshrc` or `~/.bashrc` for future terminals.

Track selected files that exist on your machine:

```sh
config add "$HOME/.zshrc"
config diff --cached
config commit -m "Add shell configuration"
config remote add origin git@github.com:chamini2/virgulilla.git
config push -u origin main
```

Use this initialization flow only with an empty remote; otherwise follow the installation steps below.

## Install on another machine

Start with an unused `~/.cfg` path:

```sh
git clone --bare git@github.com:chamini2/virgulilla.git "$HOME/.cfg"
alias config='git --git-dir="$HOME/.cfg" --work-tree="$HOME"'
config config --local status.showUntrackedFiles no
printf '/.cfg/\n' >> "$HOME/.cfg/info/exclude"
config config remote.origin.fetch '+refs/heads/*:refs/remotes/origin/*'
config fetch origin
config branch --set-upstream-to=origin/main main
config checkout main
```

If checkout reports conflicting files, move each to a backup location and retry. Example for `.zshrc`:

```sh
dotfiles_backup=$(mktemp -d "$HOME/dotfiles-backup.XXXXXX")
mv "$HOME/.zshrc" "$dotfiles_backup/"
config checkout main
```

Ensure the alias is in your shell configuration, then open a new terminal.

## Daily use

```sh
config status
config diff
config add "$HOME/.zshrc"
config diff --cached
config commit -m "Update shell configuration"
config push

# Sync after committing local changes.
config pull --ff-only

# List tracked paths from the home directory.
config -C "$HOME" ls-files
```

Add explicit paths: `config add .` can stage unrelated home files. Hidden untracked files are still eligible for staging. Keep passwords, tokens, and private keys out of commits.

## README placement

The repository root maps to `$HOME`, so this file checks out as `~/README.md`.
