# git
alias git 'hub'

# move items to the trash rather than deleting them, `npm i -g trash`
alias rm 'trash'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map 'xargs -n1'

# stopwatch
alias timer 'echo "Timer started. Stop with Ctrl-D."; and date; and time cat; and date'

# Copy to clipboard
alias c 'pbcopy'
# Trim new lines first
alias cn 'tr -d '\n' | pbcopy'

# IP addresses
alias ip 'dig +short myip.opendns.com @resolver1.opendns.com'
alias localip 'ipconfig getifaddr en0'

# HTTP methods
for method in GET HEAD POST PUT DELETE TRACE OPTIONS
  alias $method "lwp-request -m '$method'"
end

# Lock the screen (when going AFK)
alias afk '/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# Reload the shell (i.e. invoke as a login shell)
alias reload "exec $SHELL -l"

# Recursively delete `.DS_Store` files
alias ds_store_cleanup 'find . -type f -name "*.DS_Store" -ls -delete'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop='defaults write com.apple.finder CreateDesktop -bool false; and killall Finder'
alias showdesktop='defaults write com.apple.finder CreateDesktop -bool true; and killall Finder'
