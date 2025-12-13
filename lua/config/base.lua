vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd("filetype indent plugin on")
vim.cmd("syntax on")

vim.o.clipboard = "unnamedplus"
vim.o.mouse = "a"
vim.o.termguicolors = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.undofile = false
vim.o.number = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.cursorline = true
vim.o.winborder = "rounded"

vim.keymap.set("n", "<Leader>bn", "<Cmd>bn<Cr>", { desc = "move buffer next" })
vim.keymap.set("n", "<Leader>bp", "<Cmd>bp<Cr>", { desc = "move buffer prev" })
vim.keymap.set("n", "<Leader>bd", "<Cmd>bd<Cr>", { desc = "delete buffer" })

vim.keymap.set("n", "<Leader>dd", vim.diagnostic.open_float, { desc = "show diagnostic" })
vim.keymap.set("n", "<Leader>dn", vim.diagnostic.goto_next, { desc = "goto next diagnostic" })
vim.keymap.set("n", "<Leader>dp", vim.diagnostic.goto_prev, { desc = "goto prev diagnostic" })

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	float = { border = "rounded" },
})
