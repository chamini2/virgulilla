# Path stuff
set -g fish_config_path $HOME/.config/fish

# Set functions path
set fish_function_path $fish_config_path/custom $fish_function_path

# source some files by default
for file in $fish_config_path/source/*.fish
  source $file
end
