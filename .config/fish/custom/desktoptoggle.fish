function desktoptoggle
    set -l current (defaults read com.apple.finder CreateDesktop)
    if test -z $current
        echo "desktoptoggle: error reading current configuration"
        return 1
    end

    set -l new (if test $current -eq 1; echo 0; else; echo 1; end)

    defaults write com.apple.finder CreateDesktop $new
    killall Finder
end
