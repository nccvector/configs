local wk = require('which-key')
wk.setup {}

-- Cheating, setting up neogit in which key config
local neogit = require('neogit')
neogit.setup {}

-- Window
local windowmappings = {
  w = {
    name = 'Window',
    l = { '<C-w>l', 'Jump Right' },
    h = { '<C-w>h', 'Jump Left' },
    k = { '<C-w>k', 'Jump Up' },
    j = { '<C-w>j', 'Jump Down' },
    v = { '<C-w>v', 'Split vertical' },
    s = { '<C-w>s', 'Split horizontal' },
    d = { '<C-w>q', 'Close window' },
  }
}

function BufferFold()
  filetype = vim.bo.filetype

  if filetype == 'python' or filetype == 'lua' or filetype == 'yaml' then
    vim.o.foldmethod = 'indent'
  end

  if filetype == 'cpp' or filetype == 'json' then
    vim.o.syntax = true
    vim.o.foldmethod = 'syntax'
  end

  print("Detected filetype", filetype)
end

-- Buffer
local buffermappings = {
  b = {
    name = 'Buffer',
    f = { function() BufferFold() end, 'Fold' },
    b = { ':Telescope buffers<cr>', 'Show Buffer List' },
    n = { ':bnext<cr>', 'Next Buffer' },
    p = { ':bprevious<cr>', 'Previous Buffer' },
    d = { ':bprevious|bdelete #<cr>', 'Delete Buffer' },  -- Move previous buffer in current window and then delete current
    H = { '<C-w><S-h><cr>', 'Move buffer left' },
    L = { '<C-w><S-l><cr>', 'Move buffer right' },
    J = { '<C-w><S-j><cr>', 'Move buffer down' },
    K = { '<C-w><S-k><cr>', 'Move buffer up' },
  }
}

-- File
local filemappings = {
  f = {
    name = 'File',
    f = { ':Telescope find_files<cr>', 'Find File (Telescope)' },
    r = { ':Telescope oldfiles<cr>', 'Recent Files (Telescope)' },
    t = { ':Telescope file_browser<cr>', 'Toggle File Explorer (Telescope)' },
    T = { ':NvimTreeToggle<cr>', 'Toggle File Explorer' },
    s = { ':w<cr>', 'Save' },
    n = { 'New File (Not Implemented)' }
  }
}

-- Quit 
local quitmappings = {
  q = {
    name = 'Quit',
    q = { ':qa!<cr>', 'Quit' },
    Q = { ':wqa<cr>', 'Save and Quit' },
  }
}

-- Toggle (quick)
function ToggleLineNumber()
  vim.o.number = not vim.o.number
  -- 'set number' if vim.o.number == true else 'set nonumber'
  return vim.o.number and ':set number<cr>' or ':set nonumber'
end

local togglemappings = {
  t = {
    name = 'Toggle',
    n = { function() ToggleLineNumber() end, 'Toggle Line Number' },
    t = { ':term<cr>', 'Terminal' },
    T = { ':ToggleTerm<cr>', 'Toggle Terminal' },
--    T = { ':!terminator<cr>', 'New Terminator Window' },
    f = { ':FloatermNew --height=0.8 --width=0.8<cr>', 'Floating Terminal' },
    g = { ':FloatermNew --height=1.0 --width=1.0 --name=lazygit lazygit<cr>', 'Lazygit' },
    l = { ':Telescope live_grep<cr>', 'Live Grep' }
  }
}

local executionmappings = {
  e = {
    name = 'Execute',
    m = { ':!./make.sh<cr>', 'Make script' },
    b = { ':!./build.sh<cr>', 'Build script' },
    r = { ':!./run.sh<cr>', 'Run script' },
  }
}

local opts = { prefix = '<leader>' }

wk.register(windowmappings, opts)
wk.register(filemappings, opts)
wk.register(quitmappings, opts)
wk.register(togglemappings, opts)
wk.register(buffermappings, opts)
wk.register(executionmappings, opts)
