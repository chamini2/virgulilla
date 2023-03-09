# Path stuff
set -g fish_config_path $HOME/.config/fish

# Set functions path
set fish_function_path $fish_config_path/custom $fish_function_path

# source some files by default
for file in $fish_config_path/source/*.fish
  source $file
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/matteo/.miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
