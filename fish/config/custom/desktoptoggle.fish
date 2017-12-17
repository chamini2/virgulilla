# Defined in - @ line 2
function desktoptoggle
	set -l current (defaults read com.apple.finder CreateDesktop)
    set -l new_value
    if [ $current -eq 0 ]
        set new_value true
    else
        set new_value false
    end
    defaults write com.apple.finder CreateDesktop -bool $new_value
    killall Finder
end
