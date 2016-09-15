function open -d "open current directory if no files were passed"
  if string match --quiet -r '^[^-]' -- $argv
    command open $argv
  else
    command open .
  end
end
