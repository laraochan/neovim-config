vim.keymap.set("n", "<Leader>bn", "<Cmd>bn<Cr>", { desc = "move buffer next" })
vim.keymap.set("n", "<Leader>bp", "<Cmd>bp<Cr>", { desc = "move buffer prev" })
vim.keymap.set("n", "<Leader>bd", "<Cmd>bd<Cr>", { desc = "delete buffer" })

vim.keymap.set("n", "<Leader>dd", vim.diagnostic.open_float, { desc = "show diagnostic" })
vim.keymap.set("n", "<Leader>dn", vim.diagnostic.goto_next, { desc = "goto next diagnostic" })
vim.keymap.set("n", "<Leader>dp", vim.diagnostic.goto_prev, { desc = "goto prev diagnostic" })
