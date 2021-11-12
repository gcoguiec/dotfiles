set os_name = (uname -s)

function is_os
  if test $argv[1] = os_name
    return 1
  else
    return 0
  end
end
