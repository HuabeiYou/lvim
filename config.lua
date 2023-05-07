reload("user.plugins")
reload("user.autocommands")
reload("user.keymapping")
reload("user.lsp")
reload("user.treesitter")
reload("user.settings")
reload("user.alpha")
reload("user.telescope")
reload("user.git")
reload("user.dial")
reload("user.spectre")
reload("user.zk")
reload("user.bookmarks")
reload("user.smoothie")
reload("user.refactoring")
reload("user.orgmode")
reload("user.whichkey")

local colorscheme = "gruvbox"
local status_ok, _ = pcall(require, "user." .. colorscheme)
if not status_ok then
	lvim.colorscheme = colorscheme
end
