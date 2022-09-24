local options = {
  offsets = {
    {
      filetype = 'neo-tree',
      separator = true,
      text = function()
        return vim.fn.getcwd()
      end,
      highlight = 'Directory',
      text_align = 'Left',
    }
  },
  numbers = 'ordinal',
  separator_style = 'thin',
  -- TODO: Configure LSP
}

local function setup()
  require 'bufferline'.setup {
    options = options
  }

  local map = require 'utils'.key_mapper

  map('n', '<leader>1', '<cmd>BufferLineGoToBuffer 1<cr>')
  map('n', '<leader>2', '<cmd>BufferLineGoToBuffer 2<cr>')
  map('n', '<leader>3', '<cmd>BufferLineGoToBuffer 3<cr>')
  map('n', '<leader>4', '<cmd>BufferLineGoToBuffer 4<cr>')
  map('n', '<leader>5', '<cmd>BufferLineGoToBuffer 5<cr>')
  map('n', '<leader>6', '<cmd>BufferLineGoToBuffer 6<cr>')
  map('n', '<leader>7', '<cmd>BufferLineGoToBuffer 7<cr>')
  map('n', '<leader>8', '<cmd>BufferLineGoToBuffer 8<cr>')
  map('n', '<leader>9', '<cmd>BufferLineGoToBuffer 9<cr>')
  map('n', '<leader>$', '<cmd>BufferLineGoToBuffer $<cr>')
end

return { setup = setup }
