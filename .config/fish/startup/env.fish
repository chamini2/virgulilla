# Reset fish_user_paths
set -U fish_user_paths

## Home
fish_add_path $HOME/bin

## Homebrew
fish_add_path /usr/local/sbin
fish_add_path /usr/local/bin

## Cabal and sandboxes
fish_add_path $HOME/.cabal/bin
fish_add_path ./.cabal-sandbox/bin
## Stack
fish_add_path $HOME/.local/bin

## npm
fish_add_path ./node_modules/.bin

# Python
fish_add_path $HOME/.pyenv/bin
fish_add_path $HOME/.poetry/bin

# Java
fish_add_path $HOME/.jenv/bin

# Go
fish_add_path $HOME/.go/bin

## Kubectl
set -Ux KUBECONFIG kubeconfig
