return {
  -- nvim file tree for easy navigation
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- add icons
	},
	config = function()
		local nvimtree = require("nvim-tree").setup({})

		-- recommended from docs
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- keymaps
		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>") -- toggle the tree
	end,
}
