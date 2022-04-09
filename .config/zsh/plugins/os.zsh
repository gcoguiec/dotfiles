if is_os "Darwin"; then
  PATH=$HOME/bin:$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
  PATH=`brew --prefix watch`/bin:$PATH
  PATH=`brew --prefix binutils`/bin:$PATH
  PATH=`brew --prefix coreutils`/bin:$PATH
  alias dns="dscacheutil -flushcache"
  alias up="brew update && brew upgrade && mas upgrade"
  alias brews="brew list -1"
  alias pu="pushd"
  alias po="popd"
  alias mv='gmv'
  alias cp='gcp'

  function ps() {
    if [[ "$1" == "afx" ]]; then colourify pstree -w -U;
    else colourify ps $@; fi
  }
fi
