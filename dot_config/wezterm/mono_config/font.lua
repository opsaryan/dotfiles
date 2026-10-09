local wezterm = require("wezterm")
local font = {}

font.font_size = 13.5
-- font.font = wezterm.font("Iosevka Nerd Font Mono")
font.font = wezterm.font("JetBrains Mono", {
	weight = "DemiBold",
	italic = false,
	stretch = "Normal",
})

-- font.font = wezterm.font_with_fallback({
-- 	"JetBrains Nerd Font",
-- })

font.bold_brightens_ansi_colors = "BrightAndBold"

return font
