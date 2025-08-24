vim.g.mapleader = " " -- space leader key

local keymap = vim.keymap -- conciseness

-- general
keymap.set("n", "x", '"_x') -- don't copy single deleted chars
keymap.set("n", "<leader>O", "moO<Esc>`o") -- adding newlines
keymap.set("n", "<leader>o", "moo<Esc>`o")
-- keymap.set("i", "<C-j>", "<Esc>moO<Esc>`oa")
-- keymap.set("i", "<C-k>", "<Esc>moo<Esc>`oa")

-- frames
keymap.set("n", "<leader>w/", "<C-w>v") -- split window right
keymap.set("n", "<leader>wh", "<C-w>s") -- split window bottom
keymap.set("n", "<leader>wd", ":close<CR>") -- close window
--keymap.set("n", "<leader>wm", ":MaximizerToggle<CR>") -- maximize current window

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find file
keymap.set("n", "<leader>/", "<cmd>Telescope live_grep<cr>") -- search in proj
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- buffers
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- help tags

-- undo tree
keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- commands for moving blocks of text
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- make J keep cursor in same place
keymap.set("n", "J", "mzJ1`z")

-- keep cursor in one place as moving and searching
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- when pasting, don't delete current yank buffer
keymap.set("x", "<leader>p", '"_dP')
keymap.set("n", "Q", "<nop>") -- remove the operation for Q

-- simliar to emacs
keymap.set("i", "<C-H>", "<C-W>")

-- TODO: instant replace & make executable
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
