return {
	"nvim-orgmode/orgmode",
	event = "VeryLazy",
	ft = { "org" },
	config = function()
		-- Setup orgmode
		require("orgmode").setup({
			-- storage options
			org_agenda_files = "~/Dropbox/org/**/*",
			org_default_notes_file = "~/Dropbox/org/refile.org",

			-- text aesthetics
			org_hide_emphasis_markers = true,
			org_highlight_latex_and_related = "native",
			org_tags_column = -80,

			-- todo custom settings
			org_todo_keywords = { "TODO", "IN-PROGRESS", "|", "DONE" },
			org_todo_keyword_faces = {
				TODO = ":foreground #90B99F :weight bold", --
				["IN-PROGRESS"] = ":foreground #F5A191 :weight bold",
				DONE = ":foreground #B9AEDA :weight bold",
			},

			-- TODO: custom highlights

			-- headlines
			vim.cmd([[hi @org.headline.level1 guifg=#C1C0D4]]),
			vim.cmd([[hi @org.headline.level2 guifg=#ACA1CF]]),
			vim.cmd([[hi @org.headline.level3 guifg=#90B99F]]),
			vim.cmd([[hi @org.headline.level4 guifg=#E6B99D]]),
			vim.cmd([[hi @org.headline.level5 guifg=#F5A191]]),

			vim.cmd([[hi @org.properties guifg=#F0C5A9]]),
			vim.cmd([[hi @org.properties.name guifg=#9DC6AC]]),
			vim.cmd([[hi @org.directive guifg=#757581]]),

			-- priorities
			vim.cmd([[hi @org.priority.highest guifg=#EA83A5]]),
			vim.cmd([[hi @org.priority.default guifg=#E6B99D]]),
			vim.cmd([[hi @org.priority.lowest guifg=#C1C0D4]]),

			-- other text features
			vim.cmd([[hi @org.code guifg=#F0C5A9]]),
			vim.cmd([[hi @org.table.delimiter guifg=#ECAAD6]]),
			vim.cmd([[hi @org.table.heading guifg=#ECAAD6]]),

			-- vim.cmd([[hi @org.tag guifg=#F5A191]]),

			-- changing colorscheme
			-- vim.api.nvim_create_autocmd("ColorScheme", {
			-- 	pattern = "*",
			-- 	callback = function()
			-- 		-- defining own colours
			-- 		vim.api.nvim_set_hl(0, "@org.agenda.deadline", { fg = "#90B99F" })
			-- 	end,
			-- }),
			-- vim.api.nvim_create_autocmd("colorscheme", {
			-- 	pattern = "*",
			-- 	callback = function()
			-- 		-- Define own colors
			-- 		vim.api.nvim_set_hl(0, "@org.agenda.deadline", { fg = "#F5A191" })
			-- 		vim.api.nvim_set_hl(0, "@org.agenda.scheduled", { fg = "#AAFFAA" })
			--
			-- 		vim.api.nvim_set_hl(0, "@org.tag", { fg = "blue" })
			--
			-- 		-- Link to another highlight group
			-- 		vim.api.nvim_set_hl(0, "@org.agenda.scheduled_past", { link = "Statement" })
			-- 	end,
			-- }),

			-- vim.api.nvim_create_autocmd("ColorScheme", {
			-- 	pattern = "*",
			-- 	callback = function()
			-- 		vim.cmd([[hi @org.tag guifg=blue]])
			-- 	end,
			-- }),

			-- TODO:
			-- [x] change TODO faces:
			--  [x] TODO -> green; bold
			--  [x] IN-PROGRESS -> orange-ish; bold
			--  [x] DONE -> greyed out; bold
			-- [ ] after "DONE" text is greyed out
			-- [ ] "Scheduled:" is light purple-ish (same as this theme's comments)
			-- [ ] "Deadline:" is orange-ish
			-- [ ] Day(s) with tasks are boldened

			-- agenda open as new buffer but most of screen
			win_split_mode = "60split",

			org_startup_folded = "showeverything", -- show 2-depth folds

			mappings = {
				org = {
					org_toggle_checkbox = "<leader>ca",
				},
			},
		})
	end,
}
