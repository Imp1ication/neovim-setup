local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name --
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key --
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Window navigation
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Move in warpline
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)
keymap("n", "gj", "j", opts)
keymap("n", "gk", "k", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- add empty line without get into insert mode
keymap("n", "<CR>", "o<Esc>k", opts)


-- Insert --
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)



-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "p", '"_dP', opts)


-- Telescope --
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {})
vim.keymap.set("n", "<leader>lg", ":Telescope live_grep<CR>", {})

-- ToggleTerm --
vim.keymap.set("n", "<C-\\>f", ":ToggleTerm direction=float size=20<CR>", {})
vim.keymap.set("n", "<C-\\>v", ":ToggleTerm direction=vertical size=70<CR>", {})
vim.keymap.set("n", "<C-\\>h", ":ToggleTerm direction=horizontal size=20<CR>", {})

-- Nvim Tree --
keymap("n", "<leader>e", ":NvimTreeToggle<Cr>", opts)
