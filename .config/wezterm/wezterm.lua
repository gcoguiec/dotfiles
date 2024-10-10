local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

config.term = 'xterm-256color'
config.initial_cols = 120
config.initial_rows = 32
config.max_fps = 120
config.font = wezterm.font 'JetBrainsMono Nerd Font Mono'
config.window_background_opacity = 1.0
config.text_background_opacity = 1.0
config.macos_window_background_blur = 0
config.enable_scroll_bar = false
config.animation_fps = 60
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 16
config.show_tab_index_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.audible_bell = 'Disabled'
config.bold_brightens_ansi_colors = false
config.cursor_thickness = '1px'
config.default_cursor_style = 'SteadyBar'
config.font_size = 12
config.line_height = 0.95
config.front_end = 'WebGpu'
config.webgpu_power_preference = 'HighPerformance'
config.window_decorations = 'TITLE|RESIZE|MACOS_FORCE_DISABLE_SHADOW'
config.window_close_confirmation = 'NeverPrompt'
config.window_padding = {
  left = 3,
  right = 3,
  top = 3,
  bottom = 1
}
config.inactive_pane_hsb = {
  saturation = 1.0,
  brightness = 0.9
}
config.window_frame = {
  font = wezterm.font 'JetBrainsMono Nerd Font Mono',
  font_size = 10,
  inactive_titlebar_bg = '#201e40',
  active_titlebar_bg = '#201e40',
  inactive_titlebar_fg = '#d8d8d8',
  active_titlebar_fg = '#d8d8d8',
  inactive_titlebar_border_bottom = '#1f1f41',
  active_titlebar_border_bottom = '#fad002',
  button_fg = '#c5c5c5',
  button_bg = '#201e40',
  button_hover_fg = '#c5c5c5',
  button_hover_bg = '#3f4152'
}
config.colors = {
  foreground = '#d8d8d8',
  background = '#201e40',
  cursor_bg = '#d8d8d8',
  cursor_fg = '#201e40',
  cursor_border = '#d8d8d8',
  selection_fg = '#d8d8d8',
  selection_bg = '#7747b3',
  scrollbar_thumb = '#292352',
  ansi = {
    '#5c5a56', -- normal black
    '#e09a98', -- normal red
    '#bcc8b1', -- normal green
    '#e9d2bc', -- normal yellow
    '#afc8d7', -- normal blue
    '#dfcae1', -- normal magenta
    '#bdeae3', -- normal cyan
    '#f2f2f2' -- normal white
  },
  brights = {
    '#5c5a56', -- bright black
    '#e09a98', -- bright red
    '#bcc8b1', -- bright green
    '#e9d2bc', -- bright yellow
    '#afc8d7', -- bright blue
    '#dfcae1', -- bright magenta
    '#bdeae3', -- bright cyan
    '#f2f2f2' -- bright white
  }
}
config.keys = {
  {
    key = 'k',
    mods = 'SUPER',
    action = act.Multiple {
      act.ClearScrollback 'ScrollbackAndViewport',
      act.SendKey { key = 'L', mods = 'CTRL' }
    }
  },
  {
    key = 'n',
    mods = 'OPT',
    action = act { SendString = '~' }
  }
}

return config
