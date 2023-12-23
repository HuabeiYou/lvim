local status_ok, orgmode = pcall(require, "orgmode")
if not status_ok then
	return
end

orgmode.setup_ts_grammar()

require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = { "org" },
	},
	ensure_installed = { "org" },
})

orgmode.setup({
	org_agenda_files = { "~/org/**/*" },
	org_default_notes_file = "~/org/refile.org",
	org_todo_keywords = { "TODO", "WAITING", "|", "DONE", "DELEGATED" },
	org_capture_templates = {
		t = {
			description = "Todo",
			template = "* TODO %?\n %u",
			target = "~/org/todo.org",
		},
		e = {
			description = "Event",
			subtemplates = {
				r = {
					description = "recurring",
					template = "** %?\n %T",
					target = "~/org/calendar.org",
					headline = "recurring",
				},
				o = {
					description = "one-time",
					template = "** %?\n %T",
					target = "~/org/calendar.org",
					headline = "one-time",
				},
			},
		},
	},
})
table.insert(lvim.builtin.cmp.sources, { name = "orgmode" })
table.insert(lvim.builtin.cmp.formatting.source_names, { orgmode = "(ORG)" })
