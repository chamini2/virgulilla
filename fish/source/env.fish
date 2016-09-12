# PATH
## Homebrew
set -gx fish_user_paths /usr/local/bin/ $fish_user_paths

## Cabal and sandboxes
set -gx fish_user_paths $HOME/.cabal/bin .cabal-sandbox/bin $fish_user_paths

## NPM and NVM
set -gx fish_user_paths node_modules/.bin $fish_user_paths
set -gx NVM_DIR $HOME/.nvm

