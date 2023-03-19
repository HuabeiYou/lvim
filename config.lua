reload("user.plugins")
reload("user.keymapping")
reload("user.lsp")
reload("user.treesitter")
reload("user.settings")
reload("user.autocommands")
reload("user.alpha")
reload("user.whichkey")
reload("user.telescope")
reload("user.git")
reload("user.dial")
reload("user.spectre")
reload("user.zk")
reload("user.bookmarks")
reload("user.inlay-hints")

-- lvim.transparent_window = true
local colorscheme = "gruvbox-baby"
local status_ok, _ = pcall(require, "user." .. colorscheme)
if not status_ok then
	lvim.colorscheme = colorscheme
end
