# load the default ruby to use with rvm
if type -q rvm
  echo -n "Loading rvm "
  rvm use default > /dev/null 2> /dev/null
  rvm current
end
