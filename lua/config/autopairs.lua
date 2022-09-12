local function setup()
    local pairs = require'nvim-autopairs'
    pairs.setup {
        check_ts = true,
    }

    pairs.add_rules(require'nvim-autopairs.rules.endwise-lua')
end

return { setup = setup }
