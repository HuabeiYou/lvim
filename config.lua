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
if colorscheme == "gruvbox-material" then
	reload("user.gruvbox-material")
elseif colorscheme == "nightfox" then
	reload("user.nightfox")
elseif colorscheme == "gruvbox" then
	reload("user.gruvbox")
end
