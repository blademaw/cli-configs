-- terminal stuff

return {
	"NvChad/nvterm",
	config = function()
		require("nvterm").setup({
			terminals = {
				shell = "/usr/bin/fish -i",
			},
		})

		vim.keymap.set("n", "<C-t>", function()
			require("nvterm.terminal").toggle("horizontal")
		end)
		vim.keymap.set("t", "<C-t>", function()
			require("nvterm.terminal").toggle("horizontal")
		end)
	end,
}

-- return {
-- 	"akinsho/toggleterm.nvim",
-- 	version = "*",
-- 	opts = {
-- 		open_mapping = "<C-t>",
-- 		shade_terminals = true,
--
--     hide_numbers = true,
-- 		close_on_exit = true,
-- 	},
-- }
