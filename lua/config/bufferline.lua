local options = {
  offsets = {
    { 
      filetype = 'NvimTree', 
      text_align = 'center',
      separator = true,
    }
  }
}

local function setup()
  require'bufferline'.setup {
    options = options
  }
end

return { setup = setup }
