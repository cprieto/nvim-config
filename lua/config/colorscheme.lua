local M = {}
local g = vim.g

function M.setup()
    g.gruvbox_material_enable_bold = 1
    g.gruvbox_material_background = 'hard'
    g.gruvbox_material_better_performance = 1
    g.gruvbox_material_palette = 'mix'
    g.gruvbox_sign_column_background = 'none'
    vim.cmd [[colorscheme gruvbox-material]]
end

return M
