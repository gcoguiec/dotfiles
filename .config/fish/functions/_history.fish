function _history
  builtin history merge
  set command (
    builtin history --null | f --read0 --tiebreak=index --query=(commandline) --height=10% --min-height=5 | string collect
  )
  if test $status -eq 0
    commandline --replace -- $command
  end
  commandline --function repaint
end
