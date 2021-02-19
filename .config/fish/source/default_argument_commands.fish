function default_arguments_for_command -a command_to_call -d "Pass default arguments to commands when no cammands are passed. Ideal for editors."
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

command -sq open ;and default_arguments_for_command open .
command -sq code ;and default_arguments_for_command code .
command -sq atom ;and default_arguments_for_command atom .
command -sq idea ;and default_arguments_for_command idea .

functions -e default_arguments_for_command
