-- colorscheme used for nvim

return {
	"mellow-theme/mellow.nvim",
	priority = 900,
	config = function()
		vim.cmd("colorscheme mellow")
	end,

	-- "ellisonleao/gruvbox.nvim",
	-- priority = 1000,
	-- config = function()
	-- 	vim.cmd("colorscheme gruvbox")
	-- end,

	-- "neanias/everforest-nvim",
	-- version = false,
	-- lazy = false,
	-- priority = 1000, -- make sure to load this before all the other start plugins
	-- -- Optional; default configuration will be used if setup isn't called.
	-- config = function()
	-- 	require("everforest").setup({
	-- 		background = "hard",
	-- 	})
	-- 	vim.cmd("colorscheme everforest")
	-- end,

	-- "AlexvZyl/nordic.nvim",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	require("nordic").load()
	-- end,

	-- ROSE PINE (kind of like)
	-- "rose-pine/neovim",
	-- name = "rose-pine",
	-- config = function()
	-- 	require("rose-pine").setup({
	-- 		variant = "auto",
	-- 		dark_variant = "main",
	-- 		-- styles = {
	-- 		-- 	italic = true,
	-- 		-- },
	-- 	})
	-- 	vim.cmd([[colorscheme rose-pine]])
	-- end,

	-- KANAGAWA (preferred)
	-- "rebelot/kanagawa.nvim",
	-- config = function()
	-- 	require("kanagawa").setup({
	-- 		commentStyle = { italic = false },
	-- 		keywordStyle = { italic = false },
	-- 		overrides = function(colors) -- add/modify highlights
	-- 			return { ["@variable.builtin"] = { italic = false }, ["@markup.italic"] = { italic = false } }
	-- 		end,
	-- 	})
	--
	-- 	vim.cmd([[colorscheme kanagawa-dragon]]) -- init via vim
	-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- end,
}
