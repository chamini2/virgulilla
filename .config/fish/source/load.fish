if test -x /opt/homebrew/bin/brew
  # Cache Homebrew's generated shell setup so normal startup avoids spawning brew.
  # The cache refreshes once a day, or sooner if the brew executable changes.
  set -l brew_shellenv_cache "$HOME/.cache/fish/brew-shellenv.fish"
  set -l brew_shellenv_max_age 86400
  set -l refresh_brew_shellenv 0

  if not test -e $brew_shellenv_cache
    set refresh_brew_shellenv 1
  else if test (path mtime --relative $brew_shellenv_cache) -gt $brew_shellenv_max_age
    set refresh_brew_shellenv 1
  else if test /opt/homebrew/bin/brew -nt $brew_shellenv_cache
    set refresh_brew_shellenv 1
  end

  if test $refresh_brew_shellenv -eq 1
    set -l brew_shellenv_tmp "$brew_shellenv_cache.$fish_pid.tmp"
    mkdir -p (path dirname $brew_shellenv_cache)
    /opt/homebrew/bin/brew shellenv > $brew_shellenv_tmp
    and mv $brew_shellenv_tmp $brew_shellenv_cache
  end

  test -r $brew_shellenv_cache
  and source $brew_shellenv_cache
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
