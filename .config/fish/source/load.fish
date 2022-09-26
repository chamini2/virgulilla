if status --is-interactive

  # load the default ruby to use with rvm
  if type -q rvm
    rvm default
  end

  # load jenv
  if type -q jenv
    jenv init - > /dev/null
  end

  source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"

  if type -q pyenv
    pyenv init - | source
  end

end
