vim.g.mapleader = ' '

-- typedef
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Visual mode indent
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Visual mode move code block up/down
map("v", "<A-j>", ":m .+2<CR>==gv", opts)
map("v", "<A-k>", ":m .-2<CR>==gv", opts)

-- Normal mode move code up/down
map("n", "<A-j>", "<Esc>:m .+1<CR>==gn", opts)
map("n", "<A-k>", "<Esc>:m .-2<CR>==gn", opts)
map("v", "p", '"_dP', opts)  -- Persist the copied data for yank (really helpful!)
