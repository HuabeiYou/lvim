local status_ok, _ = pcall(require, "gruvbox-baby")
if not status_ok then
	return
end
-- Defaults:
-- config = {
--   background_color = opt("background_color", "medium"),
--   comment_style = opt("comment_style", "italic"),
--   keyword_style = opt("keyword_style", "italic"),
--   function_style = opt("function_style", "bold"),
--   string_style = opt("string_style", "nocombine"),
--   variable_style = opt("variable_style", "NONE"),
--   highlights = opt("highlights", {}),
--   color_overrides = opt("color_overrides", {}),
--   telescope_theme = opt("telescope_theme", false),
--   transparent_mode = opt("transparent_mode", false),
--   use_original_palette = opt("use_original_palette", false),
-- }
vim.g.gruvbox_baby_background_color = "dark"
vim.g.gruvbox_baby_transparent_mode = 1
vim.g.gruvbox_baby_keyword_style = "NONE"
vim.g.gruvbox_baby_color_overrides = {
	soft_green = "#b8bb26",
}
-- Each highlight group must follow the structure:
-- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
-- example: {Normal = {fg = "#123123", bg = "NONE", style="underline"}}
-- See also :h highlight-guifg
local colors = require("gruvbox-baby.colors").config()
vim.g.gruvbox_baby_highlights = {
	Search = { fg = colors.background, bg = colors.medium_gray },
	TSProperty = { fg = colors.foreground },
  TSParameter = { fg = colors.light_blue, style = "nocombine" },
	TSVariableBuiltin = { fg = colors.pink },
	BookmarkSign = { fg = colors.orange },
	BookmarkAnnotationSign = { fg = colors.orange },
	DiagnosticHint = { fg = colors.forest_green },
	DiagnosticUnderlineHint = { sp = colors.forest_green, style = "undercurl" },
	DiagnosticUnderlineWarn = { sp = colors.soft_yellow, style = "undercurl" },
	DiagnosticUnderlineError = { sp = colors.error_red, style = "undercurl" },
}
vim.g.gruvbox_baby_color_overrides = {
	light_blue = "#83a598",
	soft_green = "#b8bb26",
}
lvim.colorscheme = "gruvbox-baby"
