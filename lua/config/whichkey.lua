
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
  q = { '<cmd>qa!<cr>', 'Quit' },
  ['\\'] = { '<cmd>NvimTreeToggle<cr>', 'File explorer' },
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
  f = {
    name = 'Find',
    e = { '<cmd>Telescope file_browser<cr>', 'File browser' },
    f = { '<cmd>Telescope find_files<cr>', 'Files' },
    o = { '<cmd>Telescope oldfiles<cr>', 'Previous files' },
    b = { '<cmd>Telescope buffers<cr>', 'Buffers' },
    s = { '<cmd>Telescope treesitter<cr>', 'Symbols' },
    S = { '<cmd>Telescope live_grep<cr>', 'Grep!' },
  },
}

local function setup()
    local whichkey = require'which-key'

    whichkey.setup(cfg)
    whichkey.register(mappings, opts)
end

return { setup = setup }
