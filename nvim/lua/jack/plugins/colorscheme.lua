-- colorscheme used for nvim

return {
	-- ROSE PINE (kind of like)
	-- "rose-pine/neovim",
	-- name = "rose-pine",
	-- config = function()
	-- 	require("rose-pine").setup({
	-- 		variant = "auto",
	-- 		dark_variant = "moon",
	-- 		styles = {
	-- 			italic = false,
	-- 		},
	-- 	})
	-- 	vim.cmd([[colorscheme rose-pine]])
	-- end,

	-- KANAGAWA (preferred)
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			commentStyle = { italic = false },
			keywordStyle = { italic = false },
			overrides = function(colors) -- add/modify highlights
				return { ["@variable.builtin"] = { italic = false }, ["@markup.italic"] = { italic = false } }
			end,
		})

		vim.cmd([[colorscheme kanagawa-dragon]]) -- init via vim
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
}
