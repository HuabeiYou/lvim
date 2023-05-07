local status_ok, spectre = pcall(require, "spectre")
if not status_ok then
	return
end

lvim.builtin.which_key.mappings["F"] = {
	name = "Find & Replace",
	p = { "<cmd>lua require('spectre').open()<CR>", "Find and replace in the current project" },
	f = { "<cmd>lua require('spectre').open_file_search()<CR>", "Find and replace in the current file" },
	R = { "<cmd>lua require('spectre.actions').run_replace()<CR>", "Run replace" },
}

spectre.setup({
	find_engine = {
		-- rg is map with finder_cmd
		["rg"] = {
			cmd = "rg",
			-- default args
			args = {
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--multiline",
			},
			options = {
				["ignore-case"] = {
					value = "--ignore-case",
					icon = "[I]",
					desc = "ignore case",
				},
				["hidden"] = {
					value = "--hidden",
					desc = "hidden file",
					icon = "[H]",
				},
				-- you can put any rg search option you want here it can toggle with
				-- show_option function
			},
		},
	},
})
-- spectre.setup({
-- 	replace_engine = {
-- 		["sed"] = {
-- 			cmd = "sed",
-- 			args = {
-- 				"-i",
-- 				"",
-- 				"-E",
-- 			},
-- 			options = {
-- 				["ignore-case"] = {
-- 					value = "--ignore-case",
-- 					icon = "[I]",
-- 					desc = "ignore case",
-- 				},
-- 			},
-- 		},
-- 	},
-- 	default = {
-- 		find = {
-- 			cmd = "rg",
-- 			options = { "ignore-case" },
-- 		},
-- 		replace = {
-- 			cmd = "sed",
-- 		},
-- 	},
-- 	replace_vim_cmd = "cdo",
-- 	is_open_target_win = true, --open file on opener window
-- 	is_insert_mode = false, -- start open panel on is_insert_mode
-- })
