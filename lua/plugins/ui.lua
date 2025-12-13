return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		config = function()
			vim.cmd.colorscheme("kanagawa")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "typescript", "tsx" },
				highlight = {
					enable = true,
				}
			})
		end,
	},
}
