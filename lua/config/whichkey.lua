
local cfg = {
  window = { border = 'single' },
  disable = {
    filetypes = { 'TelescopePrompt', 'alpha' }
  },
}

local opts = {
  prefix = '<leader>',
}

local mappings = {
    w = { '<cmd>update!<cr>', 'Save' },
    q = { '<cmd>q!<cr>', 'Quit' },
    b = {
      name = 'Buffer',
      c = { '<cmd>bd!<cr>', 'Close current buffer' },
      D = { '<cmd>%bd|e#|bd#<cr>', 'Delete all buffers' },
    },
    p = {
      name = 'Plugins',
      c = { '<cmd>PackerCompile<cr>', 'Compile config' },
      i = { '<cmd>PackerInstall<cr>', 'Install packages' },
      u = { '<cmd>PackerUpdate<cr>', 'Update packages' },
      s = { '<cmd>PackerSync<cr>', 'Sync packages' },
      U = { '<cmd>PackerStatus<cr>', 'Package status' },
    },
}

local function setup()
    local whichkey = require'which-key'

    whichkey.setup(cfg)
    whichkey.register(mappings, opts)
end

return { setup = setup }
