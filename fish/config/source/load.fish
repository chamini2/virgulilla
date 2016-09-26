# load node from nvm
if not test $NVM_BIN
  echo -n "Loading node "
  node -v > /dev/null
  node -v
end
