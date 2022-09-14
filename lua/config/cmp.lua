local function setup()
  vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

  local cmp = require 'cmp'
  local lspkind = require 'lspkind'

  cmp.setup {
    formatting = {
      format = lspkind.cmp_format {
        mode = 'symbol_text',
        menu = {
          nvim_lua = '[LUA]'
        }
      }
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
