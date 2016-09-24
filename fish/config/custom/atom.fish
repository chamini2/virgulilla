function atom -d "open atom in current directory if no files were passed"
  if string match --quiet -r '^[^-]' -- $argv
    command atom $argv
  else
    command atom $argv .
  end
end
