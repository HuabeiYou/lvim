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
	italic = {
		strings = false,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "hard", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {
		Function = {
			link = "GruvboxYellowBold",
		},
		Macro = {
			link = "GruvboxRed",
		},
		IndentBlanklineContextChar = { link = "Normal" },
		["@variable.builtin"] = { link = "GruvboxPurple" },
		["@punctuation.bracket"] = { link = "Normal" },
		["@punctuation.delimiter"] = { link = "Normal" },
		SignColumn = { link = "Normal" },
		GruvboxGreenSign = { bg = "" },
		GruvboxOrangeSign = { bg = "" },
		GruvboxPurpleSign = { bg = "" },
		GruvboxYellowSign = { bg = "" },
		GruvboxRedSign = { bg = "" },
		GruvboxBlueSign = { bg = "" },
		GruvboxAquaSign = { bg = "" },
	},
	dim_inactive = false,
	transparent_mode = false,
})
lvim.colorscheme = "gruvbox"
