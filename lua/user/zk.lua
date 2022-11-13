local status_ok, zk = pcall(require, "zk")
if not status_ok then
	return
end

zk.setup({
	-- can be "telescope", "fzf" or "select" (`vim.ui.select`)
	-- it's recommended to use "telescope" or "fzf"
	picker = "telescope",
	lsp = {
		-- `config` is passed to `vim.lsp.start_client(config)`
		config = {
			cmd = { "zk", "lsp" },
			name = "zk",
			-- on_attach = ...
			-- etc, see `:h vim.lsp.start_client()`
		},
		-- automatically attach buffers in a zk notebook that match the given filetypes
		auto_attach = {
			enabled = true,
			filetypes = { "markdown" },
		},
	},
})

lvim.builtin.which_key.mappings["z"] = {
	name = "zk",
	c = { "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", "Create a new note after asking for its title" },
	o = { "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", "Open notes" },
	s = { "<Cmd>ZkNotes { sort = { 'modified' }, match = vim.fn.input('Search: ') }<CR>", "Search notes" },
	t = { "<Cmd>ZkTags<CR>", "Open notes associated with the selected tags" },
	b = { "<Cmd>ZkBacklinks<CR>", "Open notes linking to the current buffer." },
	l = { "<Cmd>ZkLinks<CR>", "Open notes linked by the current buffer." },
}
