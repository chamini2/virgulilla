# Reset fish_user_paths
set -U fish_user_paths

## Home
set -a fish_user_paths $HOME/bin

## Homebrew
set -a fish_user_paths /usr/local/sbin
set -a fish_user_paths /usr/local/bin

## Cabal and sandboxes
set -a fish_user_paths $HOME/.cabal/bin
set -a fish_user_paths ./.cabal-sandbox/bin
## Stack
set -a fish_user_paths $HOME/.local/bin

## npm
set -a fish_user_paths ./node_modules/.bin

# Python
set -a fish_user_paths $HOME/.pyenv/bin
set -a fish_user_paths $HOME/.poetry/bin

# Rust
set -a fish_user_paths $HOME/.cargo/bin

# Java
set -a fish_user_paths $HOME/.jenv/bin

# Go
set -a fish_user_paths $HOME/.go/bin

## Kubectl
set -Ux KUBECONFIG kubeconfig
