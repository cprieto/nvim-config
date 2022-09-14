local function setup()
  vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

  local cmp = require 'cmp'

  cmp.setup {
    formatting = {

    },

    completion = {
      completeopt = 'menu,menuone,noinsert',
      keyword_length = 1,
    },

    sources = {
      { name = 'nvim_lua' }
    }
  }
end

return { setup = setup }
