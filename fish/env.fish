## Homebrew
set -U fish_user_paths /usr/local/bin/ $fish_user_paths

## Cabal and sandboxes
set -U fish_user_paths $HOME/.cabal/bin .cabal-sandbox/bin $fish_user_paths

## NPM and NVM
set -U fish_user_paths node_modules/.bin $fish_user_paths
set -U NVM_DIR $HOME/.nvm
