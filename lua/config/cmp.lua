local function setup()
  vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

  local cmp = require 'cmp'
  local lspkind = require 'lspkind'

  cmp.setup {
    formatting = {
      format = lspkind.cmp_format {
        mode = 'symbol_text',
        menu = {
          buffer = '[📄 Buffer]',
          nvim_lua = '[🌙 Lua]',
          calc = '[🧮 Calc]',
          treesitter = '[🌳 Treesitter]',
        }
      }
    },

    completion = {
      completeopt = 'menu,menuone,noinsert',
      keyword_length = 1,
    },

    sources = {
      { name = 'treesitter' },
      { name = 'buffer' },
      { name = 'nvim_lua' },
      { name = 'emoji' },
      { name = 'calc' },
    },

    mapping = {
      ['<cr>'] = cmp.mapping {
        i = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Replace, select = false }
      },
      ['<up>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i' }),
      ['<down>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i' }),
    }
  }
end

return { setup = setup }

