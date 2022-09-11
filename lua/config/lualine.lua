local function setup()
    require'lualine'.setup {
        options = {
            globalstatus = true,
            disabled_filetypes = { 'alpha' }
        }
    }
end

return { setup = setup }
