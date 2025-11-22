# Path stuff
set -g fish_config_path $HOME/.config/fish

# Set functions path
set fish_function_path $fish_config_path/custom $fish_function_path

# source some files by default
for file in $fish_config_path/source/*.fish
  source $file
end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.fish 2>/dev/null || :

# Added by Antigravity
fish_add_path /Users/matteo/.antigravity/antigravity/bin
