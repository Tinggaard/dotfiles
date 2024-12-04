-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "OneDark (base16)"
config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font("FiraCode Nerd Font", {
	weight = "Regular",
	italic = false,
	stretch = "Normal",
	style = "Normal",
})
config.font_size = 10.0

-- How many lines of scrollback you want to retain per tab
config.scrollback_lines = 10000

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
