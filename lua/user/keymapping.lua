M = {}
lvim.leader = "space"

-- keymappings [view all the defaults by pressing <leader>Lk]
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- vim.keymap.del("n", "<C-h>")
-- vim.keymap.del("n", "<C-l>")
-- vim.keymap.del("n", "<C-j>")
-- vim.keymap.del("n", "<C-k>")

lvim.keys.insert_mode["jk"] = "<Esc>"
