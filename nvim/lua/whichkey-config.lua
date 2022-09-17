local wk = require('which-key')

wk.setup {}

-- Window
local windowmappings = {
  w = {
    name = 'Window',
    l = { '<C-w>l<cr>', 'Jump Right' },
    h = { '<C-w>h<cr>', 'Jump Left' },
    k = { '<C-w>k<cr>', 'Jump Up' },
    j = { '<C-w>j<cr>', 'Jump Down' },
  }
}

-- Buffer
local buffermappings = {
  b = {
    name = 'Buffer',
    b = { ':Telescope buffers<cr>', 'Show Buffer List' },
    n = { ':bnext<cr>', 'Next Buffer' },
    p = { ':bprevious<cr>', 'Previous Buffer' },
    d = { ':bdelete<cr>', 'Delete Buffer' },
  }
}

-- File
local filemappings = {
  f = {
    name = 'File',
    f = { ':Telescope find_files<cr>', 'Find File' },
    r = { ':Telescope oldfiles<cr>', 'Recent Files' },
    t = { ':NvimTreeToggle<cr>', 'Toggle File Explorer' },
    s = { ':w<cr>', 'Save' },
    n = { 'New File' }
  }
}

-- Quit 
local quitmappings = {
  q = {
    name = 'Quit',
    q = { ':q!<cr>', 'Quit' },
    Q = { ':wq<cr>', 'Save and Quit' },
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
    n = { function() ToggleLineNumber() end, 'Toggle line number' },
  }
}

local opts = { prefix = '<leader>' }

wk.register(windowmappings, opts)
wk.register(filemappings, opts)
wk.register(quitmappings, opts)
wk.register(togglemappings, opts)
wk.register(buffermappings, opts)

