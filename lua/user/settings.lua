-- general
lvim.log.level = "warn"
lvim.colorscheme = "nordfox"
lvim.format_on_save = false
lvim.transparent_window = true

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

vim.cmd([[set iskeyword+=-]])
vim.cmd([[set relativenumber]])
vim.cmd([[set timeoutlen=500]])
