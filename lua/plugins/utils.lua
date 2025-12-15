return {
	{
		"stevearc/oil.nvim",
		lazy = false,
		--@module "oil"
		--@type oil.SetupOpts
		opts = {
			float = {
				border = "rounded",
			},
			keymaps = {
				["q"] = "<cmd>bd<cr>",
			},
		},
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		keys = {
			{ "<leader>e", "<cmd>Oil --float<cr>", desc = "Toggle Oil" },
		},
	},
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		--@type snacks.Config
		opts = {},
		keys = {
			{
				"<leader>ff",
				function()
					Snacks.picker.files()
				end,
				desc = "Find Files",
			},
			{
				"<leader>fb",
				function()
					Snacks.picker.buffers()
				end,
				desc = "Buffers",
			},
			{
				"<leader>sg",
				function()
					Snacks.picker.grep()
				end,
				desc = "Grep",
			},
			{
				"<leader>sd",
				function()
					Snacks.picker.diagnostics()
				end,
				desc = "Diagnostics",
			},
			{
				"<leader>sD",
				function()
					Snacks.picker.diagnostics_buffer()
				end,
				desc = "Buffer Diagnostics",
			},
			{
				"<leader>gg",
				function()
					Snacks.lazygit()
				end,
				desc = "Lazygit",
			},
			{
				"gd",
				function()
					Snacks.picker.lsp_definitions()
				end,
				desc = "Goto Definition",
			},
			{
				"gD",
				function()
					Snacks.picker.lsp_type_definitions()
				end,
				desc = "Goto T[y]pe Definition",
			},
			{
				"gr",
				function()
					Snacks.picker.lsp_references()
				end,
				nowait = true,
				desc = "References",
			},
			{
				"gI",
				function()
					Snacks.picker.lsp_implementations()
				end,
				desc = "Goto Implementation",
			},
		},
	},
	{
		"saghen/blink.cmp",
		version = "1.*",
		--@module "blink.cmp"
		--@type blink.cmp.Config
		opts = {
			keymap = { preset = "default" },
			appearance = {
				nerd_font_variant = "mono",
			},
			completion = { menu = { border = "single" }, documentation = { auto_show = true } },
			sources = {
				default = { "lsp", "path", "buffer" },
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local servers = { "ts_ls" }
			vim.lsp.enable(servers)
		end,
        keymap = {
            { "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>" }
        }
	},
    {
        "akinsho/toggleterm.nvim",
        opts = {
            open_mapping = "<c-t>",
            direction = "float",
        }
    },
    {
        "mfussenegger/nvim-lint",
        config = function()
            require("lint").linters_by_ft = {
                javascript = { "eslint" },
                typescript = { "eslint" },
                javascriptreact = { "eslint" },
                typescriptreact = { "eslint" },
            }
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = {}
    }
}
