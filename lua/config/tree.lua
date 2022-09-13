local opts = {
  window = {
    width = 30,
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = { 'node_modules', '.DS_Store', 'thumbs.db', },
      },
    },
  }
}

local function setup()
  vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

  vim.fn.sign_define("DiagnosticSignError",
    { text = " ", texthl = "DiagnosticSignError" })
  vim.fn.sign_define("DiagnosticSignWarn",
    { text = " ", texthl = "DiagnosticSignWarn" })
  vim.fn.sign_define("DiagnosticSignInfo",
    { text = " ", texthl = "DiagnosticSignInfo" })
  vim.fn.sign_define("DiagnosticSignHint",
    { text = "", texthl = "DiagnosticSignHint" })

  require 'neo-tree'.setup(opts)
end

return { setup = setup }
