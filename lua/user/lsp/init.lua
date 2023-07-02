vim.diagnostic.config({ virtual_text = true })
lvim.lsp.installer.setup.automatic_installation = true
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.lua", "*.py" }

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		command = "prettier",
		filetypes = {
			"javascript",
			"typescript",
			"javascriptreact",
			"typescriptreact",
			"json",
			"css",
			"less",
			"scss",
		},
	},
	{ command = "shfmt", filetypes = { "sh", "zsh", "bash" } },
	{ command = "clang-format", filetypes = { "c", "cpp" }, extra_args = { "--style", "Google" } },
})

-- local linters = require("lvim.lsp.null-ls.linters")
-- linters.setup({
-- 	{ command = "flake8", filetypes = { "python" } },
-- })
