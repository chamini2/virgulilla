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
  if [ -f "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc" ]
    source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"
  end

  if type -q pyenv
    pyenv init - | source
  end

end
