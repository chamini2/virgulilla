function cuetag
  set -l escaped_argv (string escape $argv)
  set -l cuetag_path (find -L $fish_function_path -name cuetag.sh -type f 2>/dev/null)
  bash $cuetag_path $escaped_argv
end
