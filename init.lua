local path_package = vim.fn.stdpath("data") .. "/site"
local mini_path = path_package .. "/pack/deps/start/mini.nvim"
if not vim.loop.fs_stat(mini_path) then
	vim.cmd('echo "Installing `mini.nvim`" | redraw')
	local clone_cmd = {
		"git",
		"clone",
		"--filter=blob:none",
		-- Uncomment next line to use 'stable' branch
		-- '--branch', 'stable',
		"https://github.com/nvim-mini/mini.nvim",
		mini_path,
	}
	vim.fn.system(clone_cmd)
	vim.cmd("packadd mini.nvim | helptags ALL")
	vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

require("mini.deps").setup({ path = { package = path_package } })

local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

now(function()
	require("mini.basics").setup({
		options = {
			basic = true,
		},
		mappings = {
			basic = false,
			option_toggle_prefix = "",
		},
		autocommands = {
			basic = true,
			relnum_in_visual_mode = true,
		},
	})
end)
now(function()
	require("mini.icons").setup()
end)
now(function()
	require("mini.notify").setup()
end)

later(function()
	require("mini.completion").setup()
end)
later(function()
	require("mini.pairs").setup()
end)
later(function()
	require("mini.comment").setup()
end)
later(function()
	local miniclue = require("mini.clue")
	miniclue.setup({
		triggers = {
			-- Leader triggers
			{ mode = "n", keys = "<Leader>" },
			{ mode = "x", keys = "<Leader>" },

			-- Built-in completion
			{ mode = "i", keys = "<C-x>" },

			-- `g` key
			{ mode = "n", keys = "g" },
			{ mode = "x", keys = "g" },

			-- Marks
			{ mode = "n", keys = "'" },
			{ mode = "n", keys = "`" },
			{ mode = "x", keys = "'" },
			{ mode = "x", keys = "`" },

			-- Registers
			{ mode = "n", keys = '"' },
			{ mode = "x", keys = '"' },
			{ mode = "i", keys = "<C-r>" },
			{ mode = "c", keys = "<C-r>" },

			-- Window commands
			{ mode = "n", keys = "<C-w>" },

			-- `z` key
			{ mode = "n", keys = "z" },
			{ mode = "x", keys = "z" },
		},

		clues = {
			-- Enhance this by adding descriptions for <Leader> mapping groups
			miniclue.gen_clues.builtin_completion(),
			miniclue.gen_clues.g(),
			miniclue.gen_clues.marks(),
			miniclue.gen_clues.registers(),
			miniclue.gen_clues.windows(),
			miniclue.gen_clues.z(),
		},
	})
end)
later(function()
	require("mini.cmdline").setup()
end)
later(function()
	require("mini.diff").setup()
end)
later(function()
	require("mini.files").setup()
	vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<cr>")
end)
later(function()
	require("mini.pick").setup()
	vim.keymap.set("n", "<leader>ff", "<cmd>Pick files<cr>")
	vim.keymap.set("n", "<leader>fb", "<cmd>Pick buffers<cr>")
	vim.keymap.set("n", "<leader>fs", "<cmd>Pick grep_live<cr>")
end)

now(function()
	add({
		source = "EdenEast/nightfox.nvim",
	})
	vim.cmd.colorscheme("nightfox")
end)
now(function()
	add({
		source = "neovim/nvim-lspconfig",
	})
	vim.lsp.enable({ "lua_ls", "ts_ls" })
end)

later(function()
	add({
		source = "nvim-treesitter/nvim-treesitter",
		checkout = "master",
		monitor = "main",
		hooks = {
			post_checkout = function()
				vim.cmd("TSUpdate")
			end,
		},
	})
	require("nvim-treesitter.configs").setup({
		ensure_installed = {
			"lua",
			"vimdoc",
			"javascript",
			"typescript",
			"tsx",
			"jsdoc",
			"css",
			"scss",
			"json",
			"toml",
			"php",
			"phpdoc",
			"rust",
		},
		highlight = { enable = true },
	})
end)
