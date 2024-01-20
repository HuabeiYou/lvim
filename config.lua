reload("user.plugins")
reload("user.autocommands")
reload("user.keymapping")
reload("user.lsp")
reload("user.neotest")
reload("user.treesitter")
reload("user.settings")
reload("user.alpha")
reload("user.lualine")
reload("user.telescope")
reload("user.dial")
reload("user.spectre")
reload("user.zk")
reload("user.bookmarks")
reload("user.smoothie")
reload("user.refactoring")
reload("user.harpoon")
reload("user.whichkey")
reload("user.table-mode")

local colorscheme = "gruvbox"
local status_ok, _ = pcall(require, "user." .. colorscheme)
if not status_ok then
	lvim.colorscheme = colorscheme
end
