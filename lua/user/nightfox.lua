local status_ok, nightfox = pcall(require, "nightfox")
if not status_ok then
	return
end

nightfox.setup({
	palettes = {
		nordfox = {
			-- bg0 = "#192330", -- Dark bg (status line and float)
			-- bg1 = "#232831", -- Default bg
			-- sel is different types of selection colors.
			sel0 = "#243560", -- Popup bg, visual selection bg
		},
	},
})
