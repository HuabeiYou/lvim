reload("user.plugins")
reload("user.keymapping")
reload("user.lsp")
reload("user.treesitter")
reload("user.settings")
reload("user.alpha")
reload("user.whichkey")
reload("user.telescope")
reload("user.git")
reload("user.dial")
reload("user.spectre")
reload("user.zk")
reload("user.bookmarks")
print(lvim.colorscheme)
if lvim.colorscheme == "gruvbox" then
	reload("user.gruvbox")
end
if lvim.colorscheme == "nightfox" then
	reload("user.nightfox")
end
