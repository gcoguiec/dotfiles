alias k='kubectl'
alias i='iex'
alias m='mix'
alias c='clear'
alias r!='. $HOME/.zshrc'
alias l='ls'
alias lls='ls'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias lt='ls --tree'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias o='octave -q'
alias tm='tmux'
alias tmls='tmux ls'
alias ifconfig='colourify ifconfig'
alias nmap='colourify nmap'
alias dig='colourify dig'
alias ping="colourify ping"
alias netstat="colourify netstat"
alias make="colourify make"
alias gcc="colourify gcc"
alias diff="colourify diff"
alias docker-killall='docker stop (docker ps -a -q)'
alias docker-zombiehunt='docker rmi -f (docker images -f "dangling=true" -q)'
alias docker-prune='yes | docker image prune --all && yes | docker volume prune --all'
alias gdb='gdb --quiet'
alias colourify=`which grc`" -es --colour=auto"

if which nvim > /dev/null 2>&1; then
  alias vim=nvim
  export EDITOR='nvim'
fi

if which codium > /dev/null 2>&1; then
  alias code=codium
  [[ -z "${EDITOR}" ]] && export EDITOR='codium --wait'
fi

if which exa > /dev/null 2>&1; then
  alias ls='exa --icons'
fi

if which duf > /dev/null 2>&1; then
  alias df='duf'
fi

if which bat > /dev/null 2>&1; then
  alias cat='bat'
fi

if which zellij > /dev/null 2>&1; then
  alias ze='zellij'
fi
