local cfg = {
  disable_netrw = true,
  filters = {
    custom = { '.git' }
  },
  view = {
    adaptive_size = true,
  }
}

local function setup()
  require'nvim-tree'.setup(cfg)
  require'utils'.key_mapper('n', '<leader>\\', ':NvimTreeToggle<cr>')
end

return { setup = setup }
