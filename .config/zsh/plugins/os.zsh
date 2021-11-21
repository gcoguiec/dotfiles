if is_os "Darwin"; then
  alias dns="dscacheutil -flushcache"
  alias up="brew update && brew upgrade && mas upgrade"
  alias brews="brew list -1"
  alias pu="pushd"
  alias po="popd"

  function ps() {
    if [[ "$1" == "afx" ]]; then colourify pstree -w -U;
    else colourify ps $@; fi
  }
fi
