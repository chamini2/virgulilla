function open
  if string match --quiet -r '^[^-]' -- $argv
    command open $argv
  else
    command open .
  end
end
