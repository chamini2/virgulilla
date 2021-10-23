# Reset fish_user_paths
set -U fish_user_paths

function add_dir_to_path
    set -U fish_user_paths $argv[1] $fish_user_paths
end

function add_if_dir_to_path
    if test -d $argv[1]
        add_dir_to_path $argv[1]
    end
end

## Home
add_if_dir_to_path $HOME/bin

## Homebrew
add_dir_to_path /usr/local/sbin
add_dir_to_path /usr/local/bin

## Cabal and sandboxes
add_if_dir_to_path $HOME/.cabal/bin
add_dir_to_path .cabal-sandbox/bin
## Stack
add_if_dir_to_path $HOME/.local/bin

## npm
add_dir_to_path node_modules/.bin

## Kubectl
set -Ux KUBECONFIG kubeconfig

functions -e add_if_dir_to_path
functions -e add_dir_to_path
