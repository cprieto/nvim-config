local pkgs = {
  -- Theme
  {
    'folke/tokyonight.nvim',
    config = function()
      vim.cmd [[colorscheme tokyonight]]
    end,
  },

  {
    'williamboman/mason.nvim',
    config = function()
      require 'mason'.setup()
    end,
  },

  -- Startup screen
  {
    'goolord/alpha-nvim',
    wants = 'nvim-web-devicons',
    config = function()
      require 'config.alpha'.setup()
    end
  },

  {
    'gelguy/wilder.nvim',
    wants = 'nvim-web-devicons',
    config = function()
      require 'config.wilder'.setup()
    end,
  },

  -- **** Lazy modules required by others ****
  {
    'nvim-lua/plenary.nvim',
    module = 'plenary',
  },

  {
    'kyazdani42/nvim-web-devicons',
    module = 'nvim-web-devicons',
    config = function()
      require 'nvim-web-devicons'.setup { default = true }
    end,
  },

  -- Dressing!
  { 'stevearc/dressing.nvim' },

  -- Status line
  {
    'nvim-lualine/lualine.nvim',
    wants = 'nvim-web-devicons',
    event = 'VimEnter',
    opt = true,
    config = function()
      require 'config.lualine'.setup()
    end,
  },

  -- WhichKey
  {
    "folke/which-key.nvim",
    config = function()
      require 'config.whichkey'.setup()
    end,
    event = "VimEnter",
  },

  -- Telescope!
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    opt = true,
    event = 'VimEnter',
    config = function()
      require 'config.telescope'.setup()
    end,
  },

  {
    'nvim-telescope/telescope-file-browser.nvim',
  },

  -- File tree
  {
    'kyazdani42/nvim-tree.lua',
    wants = 'nvim-web-devicons',
    cmd = { 'NvimTreeToggle', 'NvimTreeClose' },
    config = function()
      require 'config.nvimtree'.setup()
    end,
  },

  -- Tabline
  {
    'akinsho/bufferline.nvim',
    wants = 'nvim-web-devicons',
    event = 'VimEnter',
    config = function()
      require 'config.bufferline'.setup()
    end,
  },

  -- Indent lines
  {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufReadPre',
    config = function()
      require 'config.indentlines'.setup()
    end,
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufRead',
    run = function()
      require 'nvim-treesitter.install'.update { with_sync = true }
    end,
    config = function()
      require 'config.treesitter'.setup()
    end,
  },

  -- Treesitter context
  {
    'nvim-treesitter/nvim-treesitter-context',
    opt = true,
    event = 'BufRead',
    wants = 'nvim-treesitter',
  },

  -- Treesitter refactoring
  {
    'nvim-treesitter/nvim-treesitter-refactor',
    opt = true,
    event = 'BufRead',
    wants = 'nvim-treesitter',
  },

  -- Treesitter automatic HTML tags
  {
    'windwp/nvim-ts-autotag',
    opt = true,
    event = 'BufRead',
    wants = 'nvim-treesitter',
  },

  -- Rainbow parenthesis
  {
    'p00f/nvim-ts-rainbow',
    opt = true,
    event = 'BufRead',
    wants = 'nvim-treesitter',
  },

  -- Context aware comment
  -- TODO: Fix keyboard mapping
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    opt = true,
    event = 'BufRead',
    wants = 'nvim-treesitter',
  },

  -- Autopair stuff
  {
    'windwp/nvim-autopairs',
    opt = true,
    module = { 'nvim-autopairs' },
    wants = 'nvim-treesitter',
    config = function()
      require 'config.autopairs'.setup()
    end,
  },

  -- LSP!
  {
    'neovim/nvim-lspconfig',
  },

  -- Config lsp with mason
  {
    'williamboman/mason-lspconfig.nvim',
    wants = { 'nvim-lspconfig', 'mason' },
    config = function()
      require 'mason-lspconfig'.setup()
    end,
  },
}

return { pkgs = pkgs }
