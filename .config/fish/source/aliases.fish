# git
if command -sq hub
    alias git 'hub'
end

# dotfiles management
alias config 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# stopwatch
alias timer 'echo "Timer started. Stop with Ctrl-D."; and date; and time cat; and date'

# Copy to clipboard
alias c 'pbcopy'

# IP addresses
alias ipremote 'dig +short myip.opendns.com @resolver1.opendns.com'
alias iplocal 'ipconfig getifaddr en0'

# Lock the screen (when going AFK) -- needs "Accessibility" permission from app running it
alias afk "osascript -e 'tell app \"System Events\" to key code 12 using {control down, command down}'"

# Reload the shell (i.e. invoke as a login shell)
alias reload "exec $__fish_bin_dir/fish -l"

# Recursively delete `.DS_Store` files
alias ds_store_cleanup 'find . -type f -name "*.DS_Store" -ls -delete'
