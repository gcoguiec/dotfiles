os_name=`uname -s`

function is_os {
  if test $1 = os_name; then
    return 1
  else
    return 0
  fi
}
