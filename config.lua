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

local colorscheme = "gruvbox"
if colorscheme == "gruvbox" then
	reload("user.gruvbox-baby")
elseif colorscheme == "nordfox" then
	reload("user.nightfox")
else
	lvim.colorscheme = "lunar"
end
