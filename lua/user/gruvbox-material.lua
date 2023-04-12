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

vim.g.gruvbox_material_foreground = "mix"
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_statusline_style = "original"
lvim.colorscheme = "gruvbox-material"
