function cdf -d "cd to last used Finder window"
  cd (osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')
end
