local function setup()
  local telescope = require'telescope'
  telescope.setup {
    defaults = {
      prompt_prefix = "🔍 ",
      file_ignore_patterns = { 'node_modules' },
      layout_config = {
        horizontal = {
          prompt_position = "top",
        }
      },
      winblend = 0,
      file_sorter = require("telescope.sorters").get_fuzzy_file,
      generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
    },

    extendions = {
      file_browser = {
        hijack_netrw = true,
        theme = 'ivy'
      }
    },
  }

  telescope.load_extension 'file_browser'
end

return { setup = setup }
