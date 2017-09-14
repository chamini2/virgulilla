## Homebrew
set -U fish_user_paths /usr/local/bin/ $fish_user_paths

## Cabal and sandboxes
set -U fish_user_paths $HOME/.cabal/bin .cabal-sandbox/bin $fish_user_paths

## npm
set -U fish_user_paths node_modules/.bin $fish_user_paths
