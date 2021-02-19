function cuetag
  set -l escaped_argv (string escape $argv)
  set -l cuetag_path (dirname (status filename))/cuetag.sh
  bash $cuetag_path $escaped_argv
end
