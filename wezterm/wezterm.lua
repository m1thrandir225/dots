local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	enable_scroll_bar = false,
	window_decorations = "RESIZE",
	window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 10,
	},
	window_background_opacity = 0.85,
	native_macos_fullscreen_mode = false,
	macos_window_background_blur = 10,
	automatically_reload_config = true,
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,
	tab_max_width = 100,
	window_close_confirmation = "NeverPrompt",

	-- Font
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" }),
	font_size = 16.0,

	-- Typing
	default_cursor_style = "BlinkingBlock",
	hide_mouse_cursor_when_typing = true,

	-- GPU
	max_fps = 165,
	animation_fps = 165,
	front_end = "WebGpu",
	webgpu_power_preference = "HighPerformance",

	-- Color scheme
	color_scheme = "Catppuccin Frappe",

	-- Inactive panes
	inactive_pane_hsb = {
		saturation = 1,
		brightness = 1,
	},
}

return config
