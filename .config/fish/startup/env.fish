# Reset fish_user_paths
set -U fish_user_paths

function add_if_dir
    if test -d $argv[1]
        set -U fish_user_paths $argv[1] $fish_user_paths
    end
end

## Home
add_if_dir $HOME/bin

## Homebrew
add_if_dir /usr/local/sbin
add_if_dir /usr/local/bin

## Cabal and sandboxes
add_if_dir $HOME/.cabal/bin
add_if_dir .cabal-sandbox/bin
## Stack
add_if_dir $HOME/.local/bin

## npm
add_if_dir node_modules/.bin

## Kubectl
set -Ux KUBECONFIG kubeconfig

functions -e add_if_dir