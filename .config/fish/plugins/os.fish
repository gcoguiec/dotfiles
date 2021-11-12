if is_os "Darwin"
  alias dns="dscacheutil -flushcache"
  alias up="brew update && brew upgrade && mas upgrade"
  alias brews="brew list -1"
  alias pu="pushd"
  alias po="popd"

  function ps
    switch $argv[1]
      case "afx"
        colourify pstree -w -U
      case "*"
        colourify ps $argv
    end
  end
end
