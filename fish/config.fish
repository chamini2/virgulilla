# Fish stuff
set -x fish_greeting "OMG, it\'s 🐟 !"

# Path stuff
set -gx fish_config_path $HOME/.config/fish
set -gx fish_function_path $fish_config_path/m $fish_function_path

# source some files by default
source $fish_config_path/source/*
