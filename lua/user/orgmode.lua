local status_ok, orgmode = pcall(require, "orgmode")
if not status_ok then
	return
end

orgmode.setup_ts_grammar()
orgmode.setup({
	org_agenda_files = { "~/org/**/*" },
	org_default_notes_file = "~/org/refile.org",
	org_capture_templates = {
		t = {
			description = "Todo",
			template = "* TODO %?\n %u",
			target = "~/org/todo.org",
		},
		r = {
			description = "Repo",
			template = "* [[%x][%(return string.match('%x', '([^/]+)$'))]]%?",
			target = "~/org/repos.org",
		},
	},
})
table.insert(lvim.builtin.cmp.sources, { name = "orgmode" })
table.insert(lvim.builtin.cmp.formatting.source_names, { orgmode = "(ORG)" })
