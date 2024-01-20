local status_ok, harpoon = pcall(require, "harpoon")
if not status_ok then
	return
end

-- REQUIRED
harpoon:setup()
-- REQUIRED

lvim.builtin.which_key.mappings["a"] = { "<cmd>lua require('harpoon'):list():append()<CR>", "Harpoon Append" }

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<S-h>", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<S-l>", function()
	harpoon:list():next()
end)

vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

local extensions = require("harpoon.extensions")
harpoon:extend(extensions.builtins.navigate_with_number())
