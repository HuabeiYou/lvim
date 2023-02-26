local set_theme_path = "$HOME/.config/tinted-theming/set_theme.lua"
local is_set_theme_file_readable = vim.fn.filereadable(vim.fn.expand(set_theme_path)) == 1 and true or false
if is_set_theme_file_readable then
	vim.cmd("let base16colorspace=256")
	vim.cmd("source " .. set_theme_path)
	local current_theme_name = os.getenv("BASE16_THEME")
	lvim.colorscheme = "base16-" .. current_theme_name
end
