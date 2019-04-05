function default_arguments_for_command -a command_to_call -d "Pass default arguments to commands when no cammands are passed. Ideal for editors."
    # By default, the default arguments is the current directory
    set -l default_arguments .
    if test (count $argv) -gt 1 > /dev/null
        set default_arguments $argv[2..-1]
    end

    eval "
    function $command_to_call -d 'Run `$command_to_call $default_arguments` if no args were passed.'
        if test (count \$argv) -gt 0 > /dev/null
            command $command_to_call \$argv
        else
            command $command_to_call $default_arguments
        end
    end
    "
end
