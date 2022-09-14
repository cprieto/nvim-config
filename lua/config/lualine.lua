local function setup()
    local lualine = require 'lualine'
    local navic = require 'nvim-navic'

    lualine.setup {
        options = {
            globalstatus = true,
            disabled_filetypes = { 'alpha' }
        },

        extensions = { 'neo-tree' },

        sections = {
            lualine_c = {
                'filename',
                'lsp_progress',
                { navic.get_location, cond = navic.is_available },
            }
        },
    }
end

return { setup = setup }
