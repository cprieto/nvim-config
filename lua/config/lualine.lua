return { setup = function()
    require'lualine'.setup {
        options = { 
            globalstatus = true,
            disabled_filetypes = { 'alpha' },
        }
    }
end}
