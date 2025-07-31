return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		-- import nvim-treesitter plugin
		local treesitter = require("nvim-treesitter.configs")

		-- configure treesitter
		treesitter.setup({ -- enable syntax highlighting
			yati = {
				enable = true,
				disable = { "org" },
			},
			highlight = {
				enable = true,
				disable = { "org" },
				additional_vim_regex_highlighting = { "org" },
			},
      
			-- enable indentation
			indent = { enable = false },

			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = {
				enable = true,
			},

			-- ensure these language parsers are installed
			ensure_installed = {
				-- "org",
				-- "json",
				-- "javascript",
				-- "typescript",
				-- "tsx",
				-- "yaml",
				-- "html",
				-- "css",
				-- "prisma",
				"markdown",
				"markdown_inline",
				-- "svelte",
				-- "graphql",
				"bash",
				"lua",
				"vim",
				-- "dockerfile",
				"gitignore",
				-- "query",
				"vimdoc",
				"c",
				"python",
			},
			auto_install = true,
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
