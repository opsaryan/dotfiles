local windowConfig = {}

windowConfig.initial_cols = 130
windowConfig.initial_rows = 28

-- windowConfig.line_height = 1.10
-- windowConfig.cell_width = 0.95

windowConfig.window_decorations = "RESIZE"
windowConfig.use_fancy_tab_bar = true

windowConfig.enable_wayland = true

windowConfig.animation_fps = 120
windowConfig.max_fps = 120

-- windowConfig.color_scheme = "Catppuccin Mocha"
windowConfig.color_scheme = "tokyonight_night"

windowConfig.tab_bar_at_bottom = false
windowConfig.hide_tab_bar_if_only_one_tab = true

return windowConfig
