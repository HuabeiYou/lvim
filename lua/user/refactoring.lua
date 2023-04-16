local status_ok, refactoring = pcall(require, "refactoring")
if not status_ok then
	return
end

refactoring.setup({
	prompt_func_return_type = {
		go = true,
		java = true,
	},
	prompt_func_param_type = {
		go = true,
		java = true,
	},
	printf_statements = {},
	print_var_statements = {},
})

lvim.builtin.which_key.mappings["r"] = {
	name = "+Refactor",
	p = {
		":lua require('refactoring').debug.print_var({ normal = true })<CR>",
		"Print the variable under the cursor",
	},
	c = {
		":lua require('refactoring').debug.cleanup({})<CR>",
		"Clean up generated print statements",
	},
}

lvim.builtin.which_key.vmappings["r"] = {
	name = "+Refactor",
	p = {
		":lua require('refactoring').debug.print_var({})<CR>",
		"Print the content in the first line of visual selection",
	},
	r = {
		":lua require('refactoring').select_refactor()<CR>",
		"Prompt for a refactor to apply",
	},
}
