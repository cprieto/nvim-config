local function setup()
  local telescope = require 'telescope'
  telescope.setup {
    defaults = {
      prompt_prefix = "🔍 ",
      file_ignore_patterns = { 'node_modules' },
      winblend = 10,
    },

    extendions = {
      file_browser = {
        hijack_netrw = true,
      }
    },
  }

  telescope.load_extension 'file_browser'
end

return { setup = setup }
