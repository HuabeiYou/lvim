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

-- vim.cmd([[[
--   function! s:base16_customize() abort
--     call Base16hi("Macro", g:base16_gui08, "", g:base16_cterm08, "", "", "")
--   endfunction

--   augroup on_change_colorschema
--     autocmd!
--     autocmd ColorScheme base16-* call s:base16_customize()
--   augroup END
-- ]])

lvim.colorscheme = "base16-gruvbox-dark-hard"
lvim.builtin.lualine.options = {
	theme = "gruvbox-baby",
}
