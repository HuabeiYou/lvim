local components = require("lvim.core.lualine.components")

lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.options.disabled_filetypes = { "alpha" }
lvim.builtin.lualine.sections.lualine_b = {
	"branch",
}
lvim.builtin.lualine.sections.lualine_c = {
	"filename",
	components.diff,
	components.diagnostics,
}
lvim.builtin.lualine.sections.lualine_x = {
	components.lsp,
	components.filetype,
}
lvim.builtin.lualine.sections.lualine_y = {
	components.python_env,
}
lvim.builtin.lualine.sections.lualine_z = {
	components.progress,
}
