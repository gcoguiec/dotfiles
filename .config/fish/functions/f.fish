function f
  set -lx SHELL (command --search fish)
  set -x FZF_DEFAULT_OPTS "--cycle --layout=reverse --preview-window=hidden\
    --tabstop=2 --color=dark --no-bold --info=hidden --marker='*' --prompt=''\
    --pointer='>' --padding=0 --margin=0\
    --color 'fg:#a898ed,fg+:#ffffff,bg:#1e1e3f,bg+:#2f2a57,preview-fg:#ffffff,preview-bg:#1e1e3f,border:#1e1e3f,pointer:#f89f00,gutter:#1e1e3f,hl:#a898ed,hl+:#f89f00,query:#ffffff,disabled:#444168,prompt:#f89f00,marker:#f89f00,info:#a898ed,spinner:#a898ed,header:#a898ed'"
  fzf $argv
end
