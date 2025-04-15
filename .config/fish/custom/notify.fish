function notify -d "Send a native notification"
    # default for $argv
    osascript -e "display notification \"Terminal\" with title \"$argv\" sound name \"Submarine\""
end
