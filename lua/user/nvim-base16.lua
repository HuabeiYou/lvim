-- local status_ok, base16 = pcall(require, "base16-colorscheme")
-- if not status_ok then
-- 	return
-- end

-- base16.with_config({
-- 	telescope = true,
-- 	telescope_borders = true,
-- 	indentblankline = true,
-- 	notify = true,
-- 	ts_rainbow = true,
-- 	cmp = true,
-- 	illuminate = true,
-- })

vim.g.base16_colorscheme = 256
lvim.colorscheme = "base16-gruvbox-dark-hard"
lvim.builtin.lualine.options.theme = "gruvbox"
