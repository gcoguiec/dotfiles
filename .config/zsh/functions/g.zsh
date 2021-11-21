function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git diff --stat
  fi
}
