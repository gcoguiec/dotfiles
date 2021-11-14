function gdb
  set -l gdb_path = (which gdb)
  $gdb_path --quiet $argv
end
