-- colorscheme used for nvim

return {
  {
    "https://github.com/alljokecake/naysayer-theme.nvim",
    config = function()
      require('naysayer').setup({
        variant = 'main',
        dark_variant = 'main',
        bold_vert_split = false,
        dim_nc_background = false,
        disable_background = true,
        disable_float_background = true,
        disable_italics = true,
      })
      vim.cmd("colorscheme naysayer")
    end
  }
  -- {
  --   "https://github.com/RRethy/base16-nvim",
  --   config = function()
  --     local bg = "#0F1919"
  --     local accent = "#102121"
  --     local accent2 = "#0D2525" -- highlight
  --
  --     local text = "#abb2bf"
  --     local dark_text = "#3E4451" -- comments, line numbers
  --
  --     local keyword = "#8F939A"
  --     local func = "#B6AB8B"
  --     local types = "#65838E"
  --     local constant = "#A06057"
  --
  --     local for_tesing = "#FF0000"
  --
  --     require("base16-colorscheme").setup({
  --       base00 = bg,
  --       base01 = accent,
  --       base02 = accent2,
  --       base03 = dark_text,
  --       base04 = dark_text,
  --       base05 = text,
  --       base06 = for_tesing,
  --       base07 = for_tesing,
  --       base08 = text,
  --       base09 = constant,
  --       base0A = types,
  --       base0B = constant,
  --       base0C = text,
  --       base0D = func,
  --       base0E = keyword,
  --       base0F = text,
  --     })
  --     -- vim.cmd("colorscheme base16")
  --   end,
  -- },
  --	"mellow-theme/mellow.nvim",
  --	priority = 900,
  --	config = function()
  --		vim.cmd("colorscheme mellow")
  --	end,

	-- "ellisonleao/gruvbox.nvim",
	-- priority = 900,
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
