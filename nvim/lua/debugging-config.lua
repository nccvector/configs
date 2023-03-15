local dap = require('dap')

dap.adapters.python = {
  type = 'server';
  command = '/usr/bin/python';
  args = { '-m', 'debugpy.adapter' };
  host = '127.0.0.1';
  port = 5678;
}

-- -- Python adapter config
-- dap.adapters.python = {
--   type = 'executable';
--   command = '/usr/bin/python';
--   args = { '-m', 'debugpy.adapter' };
-- }
-- 
local dap = require('dap')
dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = 'attach';
    name = "Launch file";

    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    program = "${file}"; -- This configuration will launch the current file if used.
    pythonPath = '/usr/bin/python';
  },
}
