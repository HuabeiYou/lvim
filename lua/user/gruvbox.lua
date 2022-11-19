local status_ok, gruvbox = pcall(require, "gruvbox")
if not status_ok then
	return
end
-- setup must be called before loading the colorscheme
-- Default options:
gruvbox.setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = true,
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "hard", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {
		BookmarkSign = { fg = "#ff9900" },
		GitSignsAdd = { bg = "NONE" },
		GitSignsChange = { bg = "NONE" },
		GitSignsDelete = { bg = "NONE" },
	},
	dim_inactive = false,
	transparent_mode = true,
})
vim.g.background = "dark"
