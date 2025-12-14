return {
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        config = function()
            require("nightfox").setup()
            vim.cmd.colorscheme("nightfox")
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
