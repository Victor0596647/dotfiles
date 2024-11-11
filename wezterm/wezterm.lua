local wezterm = require 'wezterm'
local config = {}

config.font =  wezterm.font "JetBrains Mono"
config.window_background_opacity = 0.97
config.window_frame = {
    font_size = 10.0,
}

config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = "Horizon Dark (Gogh)"

return config
