function code -d "open code in current directory if no files were passed"
  if not string match --quiet -r '^[^-]' -- $argv
    set argv $argv .
  end
  command code $argv
end
