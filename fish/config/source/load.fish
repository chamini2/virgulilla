# load the default ruby to use with rvm
if type -q rvm
  echo -n "Loading rvm "
  rvm use default > /dev/null 2> /dev/null
  rvm current
end

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

set fish_function_path $fish_config_path/custom $fish_function_path
