function cuetag
  set -l escaped_argv (string escape $argv)
  eval "bash ~/.config/fish/custom/cuetag.sh $escaped_argv"
end
