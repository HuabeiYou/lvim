lvim.plugins = {
	{ "lunarvim/darkplus.nvim" },
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	{
		"filipdutescu/renamer.nvim",
		config = function()
			require("user.renamer").config()
		end,
		branch = "master",
	},
	{
		"unblevable/quick-scope",
		config = function()
			vim.cmd([[ let g:qs_highlight_on_keys = ['f', 'F', 't', 'T'] ]])
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("user.blankline").config()
		end,
	},
	{
		"tpope/vim-fugitive",
	},
	{
		"f-person/git-blame.nvim",
		config = function()
			vim.g.gitblame_enabled = 0
			vim.g.gitblame_message_template = "<author> • <date> • <summary>"
			vim.g.gitblame_highlight_group = "LineNr"
		end,
	},
	{
		"andymass/vim-matchup",
		event = "CursorMoved",
		config = function()
			vim.g.matchup_matchparen_offscreen = { method = nil }
		end,
	},
	{
		"nacro90/numb.nvim",
		event = "BufRead",
		config = function()
			require("user.numb").config()
		end,
	},
	{
		"monaqa/dial.nvim",
		event = "BufRead",
		config = function()
			require("user.dial").config()
		end,
	},
	{ "norcalli/nvim-colorizer.lua" },
	{
		"windwp/nvim-spectre",
		event = "BufRead",
		config = function()
			require("user.spectre").config()
		end,
	},
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("user.neoscroll").config()
		end,
	},
	{ "folke/todo-comments.nvim" },
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
	},
	{
		"sindrets/diffview.nvim",
		event = "BufRead",
	},
	{
		"tpope/vim-surround",
		keys = { "cs", "ds", "ys" },
	},
	{ "tpope/vim-repeat" },
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
		"ggandor/lightspeed.nvim",
		event = "BufRead",
		config = function()
			require("user.lightspeed").config()
		end,
	},
}
