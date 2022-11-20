-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.transparent_window = true

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.project.active = true

vim.cmd([[set iskeyword+=-]])
vim.cmd([[set relativenumber]])
vim.cmd([[set timeoutlen=300]])
