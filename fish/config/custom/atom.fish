function atom -d "open atom in current directory if no files were passed"
  if not string match --quiet -r '^[^-]' -- $argv
    set argv $argv .
  end
  if command -sq atom-beta
    command atom-beta $argv
  else
    command atom $argv
  end
end
