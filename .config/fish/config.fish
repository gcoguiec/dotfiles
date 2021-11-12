source $HOME/.config/fish/colors.fish

set -U fish_greeting ""
set -U fish_color_error $petite_orchid
set -U fish_color_command $pale_leaf
set -U fish_color_param white
set -U fish_color_comment $heliotrope
set -U fish_color_autosuggestion $storm_dust
set -U fish_color_cwd white
set -U fish_color_cwd_root $petite_orchid
set -U fish_color_end white
set -U fish_color_escape white
set -U fish_color_host_remote $gold
set -U fish_color_operator white
set -U fish_color_valid_path ""
set -U fish_color_quote white
set -U fish_color_redirection white
set -U fish_color_search_match white
set -U fish_color_selection white
set -U fish_color_status white
set -U fish_color_user white
set -U fish_pager_color_completion white
set -U fish_pager_color_description $orange_peel
set -U fish_pager_color_prefix $gold
set -U fish_pager_color_progress $heliotrope

for plugin in (find $HOME/.config/fish/plugins -name "*.fish")
  source $plugin
end

if test -e $HOME/.local.fish
  source $HOME/.local.fish
end

if which starship > /dev/null 2>&1
  starship init fish | source
end

if which zoxide > /dev/null 2>&1
  zoxide init fish | source
end
