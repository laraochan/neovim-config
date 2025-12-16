vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd("filetype indent plugin on")
vim.cmd("syntax on")

vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.termguicolors = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.number = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.winborder = "rounded"

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	float = { border = "rounded" },
})
