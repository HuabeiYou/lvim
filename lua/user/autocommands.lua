-- vim.api.nvim_create_autocmd("BufEnter", {
-- 	pattern = { "*.json", "*.jsonc", "*.md" },
-- 	command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
local function define_autocmds(definitions)
	for _, entry in ipairs(definitions) do
		local event = entry[1]
		local opts = entry[2]
		if type(opts.group) == "string" and opts.group ~= "" then
			local exists, _ = pcall(vim.api.nvim_get_autocmds, { group = opts.group })
			if not exists then
				vim.api.nvim_create_augroup(opts.group, {})
			end
		end
		vim.api.nvim_create_autocmd(event, opts)
	end
end

local definitions = {
	{
		{ "BufWinEnter", "BufRead", "BufNewFile" },
		{
			group = "_format_options",
			pattern = "*",
			command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
		},
	},
}
define_autocmds(definitions)

vim.cmd([[
function! s:gruvbox_material_custom() abort
  " Link a highlight group to a predefined highlight group.
  " See `colors/gruvbox-material.vim` for all predefined highlight groups.
  highlight! link NvimTreeFolderName Blue
  highlight! link NvimTreeEmptyFolderName Blue
  highlight! link NvimTreeOpenedFolderName Blue
  highlight! link NvimTreeGitStaged Green

  " Initialize the color palette.
  " The first parameter is a valid value for `g:gruvbox_material_background`,
  " the second parameter is a valid value for `g:gruvbox_material_foreground`,
  " and the third parameter is a valid value for `g:gruvbox_material_colors_override`.
  " let l:palette = gruvbox_material#get_palette('hard', 'mix', {})
  " Define a highlight group.
  " The first parameter is the name of a highlight group,
  " the second parameter is the foreground color,
  " the third parameter is the background color,
  " the fourth parameter is for UI highlighting which is optional,
  " and the last parameter is for `guisp` which is also optional.
  " See `autoload/gruvbox_material.vim` for the format of `l:palette`.
  " call gruvbox_material#highlight('groupE', l:palette.red, l:palette.none, 'undercurl', l:palette.red)
endfunction

augroup GruvboxMaterialCustom
  autocmd!
  autocmd ColorScheme gruvbox-material call s:gruvbox_material_custom()
augroup END
]])
