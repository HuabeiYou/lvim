-- Additional Plugins
lvim.plugins = {
	"luisiacc/gruvbox-baby",
	"ellisonleao/gruvbox.nvim",
	"tinted-theming/base16-vim",
	"rebelot/kanagawa.nvim",
	"nvim-treesitter/nvim-treesitter-context",
	"nvim-treesitter/playground",
	"jose-elias-alvarez/typescript.nvim",
	"simrat39/rust-tools.nvim",
	"mickael-menu/zk-nvim",
	"nvim-neotest/neotest",
	"nvim-neotest/neotest-python",
	"nvim-neotest/neotest-jest",
	"mfussenegger/nvim-dap-python",
	"mxsdev/nvim-dap-vscode-js",
	"f-person/git-blame.nvim",
	"tpope/vim-surround",
	"tpope/vim-repeat",
	"monaqa/dial.nvim",
	"windwp/nvim-ts-autotag",
	"windwp/nvim-spectre",
	"MattesGroeger/vim-bookmarks",
	"lvimuser/lsp-inlayhints.nvim",
	"tpope/vim-fugitive",
	"opalmay/vim-smoothie",
	"j-hui/fidget.nvim",
	"nacro90/numb.nvim",
	"nvim-orgmode/orgmode",
	"dhruvasagar/vim-table-mode",
	{
		"akinsho/org-bullets.nvim",
		config = function()
			require("org-bullets").setup()
		end,
	},
	{
		"folke/todo-comments.nvim",
		config = function()
			require("todo-comments").setup({})
		end,
	},
	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
	{
		"ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings()
		end,
	},
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
		lazy = true,
		config = function()
			require("persistence").setup({
				dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"),
				options = { "buffers", "curdir", "tabpages", "winsize" },
			})
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		ft = "markdown",
		config = function()
			vim.g.mkdp_auto_start = 1
		end,
	},
}
