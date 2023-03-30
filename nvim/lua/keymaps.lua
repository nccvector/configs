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

-- LSP related
vim.keymap.set('n', '<space>gd', vim.lsp.buf.definition, {desc = 'Jump to definition', noremap = true, silent = true})
vim.keymap.set('n', '<space>gD', vim.lsp.buf.definition, {desc = 'Jump to declaration', noremap = true, silent = true})
vim.keymap.set('n', '<space>gK', vim.lsp.buf.hover, {desc = 'Hover', noremap = true, silent = true})
vim.keymap.set('n', '<space>gi', vim.lsp.buf.implementation, {desc = 'Implementation', noremap = true, silent = true})
vim.keymap.set('n', '<space>gs', vim.lsp.buf.signature_help, {desc = 'Signature help', noremap = true, silent = true})
vim.keymap.set('n', '<space>gt', vim.lsp.buf.type_definition, {desc = 'Type definition', noremap = true, silent = true})
vim.keymap.set('n', '<space>gR', vim.lsp.buf.rename, {desc = 'Rename', noremap = true, silent = true})
vim.keymap.set('n', '<space>ga', vim.lsp.buf.code_action, {desc = 'Code action', noremap = true, silent = true})
vim.keymap.set('n', '<space>gr', vim.lsp.buf.references, {desc = 'References', noremap = true, silent = true})
vim.keymap.set('n', '<space>gf', vim.lsp.buf.format, {desc = 'Format', noremap = true, silent = true})

-- Normal mode move code up/down
map("n", "<A-k>", "<Esc>:m .-2<CR>==gn", opts)
map("n", "<A-k>", "<Esc>:m .-2<CR>==gn", opts)
map("v", "p", '"_dP', opts)  -- Persist the copied data for yank (really helpful!)
