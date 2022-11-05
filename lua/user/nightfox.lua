local status_ok, nightfox = pcall(require, "nightfox")
if not status_ok then
	return
end

nightfox.setup({
	palettes = {
		nordfox = {
			-- sel is different types of selection colors.
			sel0 = "#3d59a1", -- Popup bg, visual selection bg
		},
	},
})
