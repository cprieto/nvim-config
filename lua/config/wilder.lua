local function setup()
  local wilder = require'wilder'
  wilder.setup{ 
    modes = { ':', '/', '?' },
  }

  wilder.set_option('renderer', wilder.popupmenu_renderer(
    wilder.popupmenu_border_theme{
      border = 'rounded',
      highlights = {
        border = 'Normal'
      }
    }
  ))
end

return { setup = setup }
