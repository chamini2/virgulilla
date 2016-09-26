# Fish stuff
set -x fish_greeting "OMG, it's 🐟 !"

# Path stuff
set -gx fish_config_path $HOME/.config/fish

# source some files by default
for file in $fish_config_path/source/*.fish
  source $file
end
