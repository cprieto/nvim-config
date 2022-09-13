local M = {}

local function footer()
    -- Get neovim version
    local version = vim.version()
    local version_text = ' Neovim v' .. version.major .. '.' .. version.minor .. '.' .. version.patch

    -- `packer_plugins` is a global table with loaded plugins
    -- We are interested in the number of keys, hence `#`
    local total_plugins = #vim.tbl_keys(packer_plugins)
    local plugin_text = ' ' .. total_plugins .. ' plugins installed'

    return plugin_text .. ' ' .. version_text
end

local logo = {
    [[                                                                   ]],
    [[      ████ ██████           █████      ██                    ]],
    [[     ███████████             █████                            ]],
    [[     █████████ ███████████████████ ███   ███████████  ]],
    [[    █████████  ███    █████████████ █████ ██████████████  ]],
    [[   █████████ ██████████ █████████ █████ █████ ████ █████  ]],
    [[ ███████████ ███    ███ █████████ █████ █████ ████ █████ ]],
    [[██████  █████████████████████ ████ █████ █████ ████ ██████]],
}

local function header()
    local lines = {}

    for i, chars in pairs(logo) do
        local line = {
            type = "text",
            val = chars,
            opts = {
                shrink_margin = false,
                position = "center",
            },
        }

        table.insert(lines, line)
    end

    return lines
end

function M.setup()
    local dashboard = require 'alpha.themes.dashboard'

    local theta = require 'alpha.themes.theta'.config

    -- Change the header
    theta.layout[2] = {
        type = 'group',
        val = header()
    }

    -- Change the buttons
    theta.layout[6] = {
        type = 'group',
        val = {
            { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
            { type = "padding", val = 1 },
            dashboard.button('N', '  New file', '<cmd>ene <BAR> startinsert<CR>'), -- New file
            -- dashboard.button('F', '  Find file', '<cmd>'), -- Find file
            dashboard.button('U', '  Update plugins', '<cmd>PackerSync<CR>'), -- Update plugins
            dashboard.button('q', '  Quit', '<cmd>qa<CR>'), -- Quit
        }
    }

    table.insert(theta.layout, { type = "padding", val = 1 })
    table.insert(theta.layout, {
        type = "text",
        val = footer,
        opts = { hl = "SpecialComment", position = "center" }
    })

    theta.opts.noautocmd = true

    -- -- Basic actions on loading
    -- dashboard.section.buttons.val = {
    -- }

    -- dashboard.section.footer.val = footer()
    -- dashboard.opts.opts.noautocmd = true

    require 'alpha'.setup(theta)
end

return M
