local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- backgound settings
local backgroundConfig = require("mono_config.bg")
for k, v in pairs(backgroundConfig) do
	config[k] = v
end

-- font settings
local fontConfig = require("mono_config.font")
for k, v in pairs(fontConfig) do
	config[k] = v
end

-- window settings
local windowConfig = require("mono_config.window")
for k, v in pairs(windowConfig) do
	config[k] = v
end

return config
