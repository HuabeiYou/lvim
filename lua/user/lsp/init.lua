require("user.lsp.rust")
lvim.format_on_save = false
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.installer.setup.automatic_installation = true

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "prettier", filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "css" } },
	{ command = "black", filetypes = { "python" } },
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "goimports", filetypes = { "go" } },
	{ command = "gofumpt", filetypes = { "go" } },
	{ command = "shfmt", filetypes = { "sh", "zsh", "bash" } },
	{ command = "google_java_format", filetypes = { "java" } },
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ command = "flake8", filetypes = { "python" } },
})
