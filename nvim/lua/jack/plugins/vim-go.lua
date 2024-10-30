return {
	"fatih/vim-go", -- go-specific things
	config = function()
		vim.g.go_def_mapping_enabled = 0
	end,
}
