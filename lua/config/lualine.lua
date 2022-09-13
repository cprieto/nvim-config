local function setup()
    require 'lualine'.setup {
        options = {
            globalstatus = true,
            disabled_filetypes = { 'alpha', 'NvimTree' }
        }
    }
end

return { setup = setup }
