local opt = vim.opt -- conciseness

-- terminal emulator
-- vim.o.shell = "/usr/bin/bash -i"

-- cursor
opt.guicursor = ""

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabbing and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false
opt.conceallevel = 2
opt.concealcursor = "nc"

-- search
opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
-- vim.g.clipboard = {
--   name = "xsel",
--   copy = {
--     ["+"] = "xsel --nodetach -i -b",
--     ["*"] = "xsel --nodetach -i -p",
--   },
--   paste = {
--     ["+"] = "xsel -o -b",
--     ["*"] = "xsel -o -p",
--   },
--   cache_enabled = 1,
-- }
vim.opt.clipboard = "unnamedplus"

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- make vim not backup; but keep long records of undo tree
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- turn off highlight in search
opt.hlsearch = false
opt.incsearch = true

-- make scrolling better
opt.scrolloff = 8
opt.signcolumn = "yes"

-- better cursor and fill column
opt.updatetime = 50
opt.colorcolumn = "80"

-- diff with buffer
vim.api.nvim_create_user_command("Diff", function()
	vim.cmd("w !git diff --no-index % -")
end, {})
