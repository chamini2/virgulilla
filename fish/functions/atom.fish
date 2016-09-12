function atom
  if string match --quiet -r '^[^-]' -- $argv
    command atom $argv
  else
    command atom $argv .
  end
end
