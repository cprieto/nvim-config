local function setup()
    local lualine = require 'lualine'

    local lualine_c = lualine.get_config().sections.lualine_c
    table.insert(lualine_c, 'lsp_progress')

    lualine.setup {
        options = {
            globalstatus = true,
            disabled_filetypes = { 'alpha' }
        },

        extensions = { 'neo-tree' },

        sections = {
            lualine_c = lualine_c
        },
        -- TODO: Configure lsp progress
    }

    -- Append to existing configuration
    -- table.insert(lualine.get_config().sections.lualine_c, 'lsp_progress')
end

return { setup = setup }
