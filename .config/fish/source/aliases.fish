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
alias remoteip 'dig +short myip.opendns.com @resolver1.opendns.com'
alias localip 'ipconfig getifaddr en0'

# HTTP methods
for method in GET HEAD POST PUT DELETE TRACE OPTIONS
  alias $method "lwp-request -m '$method'"
end

# Lock the screen (when going AFK)
alias afk '/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# Reload the shell (i.e. invoke as a login shell)
alias reload "exec $__fish_bin_dir/fish -l"

# Recursively delete `.DS_Store` files
alias ds_store_cleanup 'find . -type f -name "*.DS_Store" -ls -delete'
