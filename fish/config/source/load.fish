# load node from nvm
if not test $NVM_BIN
   and type -q node
  echo -n "Loading node "
  node -v > /dev/null
  node -v
end

# load the default ruby to use with rvm
if type -q rvm
  echo -n "Loading rvm "
  rvm use default > /dev/null 2> /dev/null
  rvm current
end

set fish_function_path $fish_config_path/custom $fish_function_path
