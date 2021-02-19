# Path stuff
set -g fish_config_path $HOME/.config/fish

# Set functions path
set fish_function_path $fish_config_path/custom $fish_function_path

# source some files by default
for file in $fish_config_path/source/*.fish
  source $file
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/matteo/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/matteo/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/matteo/Downloads/google-cloud-sdk/path.fish.inc'; end; end
