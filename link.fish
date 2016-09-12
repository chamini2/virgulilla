set -l fish_config_path $HOME/.config/fish

mkdir -p $fish_config_path
ln -fs (pwd)/fish/* $fish_config_path/

if not functions --query fisher
  # fisherman (https://github.com/fisherman/fisherman)
  curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
end

# to install plugins in fishfile
fisher
