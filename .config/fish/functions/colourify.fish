function colourify
  set -l grc_path (which grc)
  $grc_path -es --colour=auto $argv
end
