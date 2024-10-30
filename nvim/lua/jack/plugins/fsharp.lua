return {
	-- "adelarsq/neofsharp.vim",
	-- "ionide/Ionide-vim",
	-- lazy = true,
	"ionide/ionide-vim",
	ft = "fsharp",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	config = function()
		vim.g["fsharp#show_signature_on_cursor_move"] = 0
		vim.g["fsharp#lsp_auto_setup"] = 0

		vim.g["fsharp#backend"] = "disable"
	end,
}
