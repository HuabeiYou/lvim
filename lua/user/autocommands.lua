-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
local function define_autocmds(definitions)
	for _, entry in ipairs(definitions) do
		local event = entry[1]
		local opts = entry[2]
		if type(opts.group) == "string" and opts.group ~= "" then
			local exists, _ = pcall(vim.api.nvim_get_autocmds, { group = opts.group })
			if not exists then
				vim.api.nvim_create_augroup(opts.group, {})
			end
		end
		vim.api.nvim_create_autocmd(event, opts)
	end
end

local definitions = {
	{
		{ "BufWinEnter", "BufRead", "BufNewFile" },
		{
			group = "_format_options",
			pattern = "*",
			command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
		},
	},
}
define_autocmds(definitions)
