lvim.format_on_save = false
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.installer.setup.automatic_installation = true

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "google_java_format", filetypes = { "java" } },
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "black", filetypes = { "python" } },
})
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ command = "flake8", filetypes = { "python" } },
})

require("user.lsp.typescript")
require("user.lsp.python")
require("user.lsp.rust")
require("user.lsp.go")
