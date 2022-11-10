-- Additional Plugins
lvim.plugins = {
	{ "EdenEast/nightfox.nvim" },
	{ "nvim-treesitter/nvim-treesitter-context" },
	{ "jose-elias-alvarez/typescript.nvim" },
	{ "simrat39/rust-tools.nvim" },
	{ "mfussenegger/nvim-dap-python" },
	{ "mxsdev/nvim-dap-vscode-js" },
	{ "f-person/git-blame.nvim" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-repeat" },
	{ "monaqa/dial.nvim" },
	{ "windwp/nvim-ts-autotag" },
	{ "p00f/nvim-ts-rainbow" },
	{ "folke/todo-comments.nvim" },
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({ "*" }, {
				RGB = true, -- #RGB hex codes
				RRGGBB = true, -- #RRGGBB hex codes
				RRGGBBAA = true, -- #RRGGBBAA hex codes
				rgb_fn = true, -- CSS rgb() and rgba() functions
				hsl_fn = true, -- CSS hsl() and hsla() functions
				css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
				css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
			})
		end,
	},
	{
		"ethanholz/nvim-lastplace",
		event = "BufRead",
		config = function()
			require("nvim-lastplace").setup({
				lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
				lastplace_ignore_filetype = {
					"gitcommit",
					"gitrebase",
					"svn",
					"hgcommit",
				},
				lastplace_open_folds = true,
			})
		end,
	},
	{
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
		module = "persistence",
		config = function()
			require("persistence").setup({
				dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"),
				options = { "buffers", "curdir", "tabpages", "winsize" },
			})
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		ft = "markdown",
		config = function()
			vim.g.mkdp_auto_start = 1
		end,
	},
}
