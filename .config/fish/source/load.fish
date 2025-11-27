if test -d /opt/homebrew
  eval (/opt/homebrew/bin/brew shellenv)
end

if status --is-interactive

  # load the default ruby to use with rvm
  if type -q rvm
    rvm default
  end

  # load jenv
  if type -q jenv
    jenv init - > /dev/null
  end

  # TODO: should this be a one-time call?
  # if [ -f "$HOME/Projects/google-cloud-sdk/path.fish.inc" ]
  #   source "$HOME/Projects/google-cloud-sdk/path.fish.inc"
  # end

end

# Python env management

if test -d /Users/matteo/.miniconda3
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  eval /Users/matteo/.miniconda3/bin/conda "shell.fish" "hook" $argv | source
  # <<< conda initialize <<<
end

if type -q pyenv
  pyenv init - | source
  pyenv virtualenv-init - | source
end
