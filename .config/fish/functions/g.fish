function g
  if test (count $argv) -gt 0
    git $argv
  else
    git diff --stat
  end
end
