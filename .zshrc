export ZSH=$HOME/.config/zsh

if [[ -d $ZSH ]]; then
  source $ZSH/config.zsh
  for fn_file ($ZSH/functions/*.zsh) source $fn_file
  for plugin_file ($ZSH/plugins/*.zsh) source $plugin_file
  if is_os "Darwin"; then
    fpath=($(brew --prefix)/share/zsh-completions $fpath)
  fi
  autoload -U compinit
  compinit -i
fi

[[ -a $HOME/.local.zsh ]] && . $HOME/.local.zsh

if which starship > /dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

if which zoxide > /dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi
