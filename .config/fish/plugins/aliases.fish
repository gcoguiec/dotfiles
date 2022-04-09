alias k='kubectl'
alias i='iex'
alias m='mix'
alias c='clear'
alias r!='. $HOME/.config/fish/config.fish'
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
alias docker-prune='docker image prune --all && docker volume prune -f'

if which nvim > /dev/null 2>&1
  alias vim=nvim
  set -gx EDITOR 'nvim'
end

if which codium > /dev/null 2>&1
  alias code=codium
  if not set -q EDITOR
    set -gx EDITOR 'codium --wait'
  end
end

if which exa > /dev/null 2>&1
  alias ls='exa'
end

if which duff > /dev/null 2>&1
  alias df='duf'
end

if which bat > /dev/null 2>&1
  alias cat='bat'
end

if which zellij > /dev/null 2>&1
  alias ze='zellij'
end
