local pkgs = {
  'lewis6991/impatient.nvim',

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
    event = 'VimEnter',
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
    'MunifTanjim/nui.nvim',
    module = 'nui',
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
    config = function()
      require 'config.lualine'.setup()
    end,
    requires = {
      'arkav/lualine-lsp-progress',
      'SmiteshP/nvim-navic',
    },
  },

  -- WhichKey
  {
    "folke/which-key.nvim",
    event = "VimEnter",
    config = function()
      require 'config.whichkey'.setup()
    end,
  },

  {
    'akinsho/toggleterm.nvim',
    event = 'VimEnter',
    config = function()
      require 'toggleterm'.setup()
    end,
  },

  -- Telescope!
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    event = 'VimEnter',
    config = function()
      require 'config.telescope'.setup()
    end,
    requires = {
      'nvim-telescope/telescope-file-browser.nvim',
    },
  },

  -- File tree
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    config = function()
      require 'config.tree'.setup()
    end,
    wants = {'plenary.nvim', 'nvim-web-devicons', 'nui.nvim'},
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

  -- Treesitter extensions, they have to be installed AFTER treesitter
  {
    'nvim-treesitter/nvim-treesitter-context',
    after = 'nvim-treesitter',
  },

  {
    'nvim-treesitter/nvim-treesitter-refactor',
    after = 'nvim-treesitter',
  },

  {
    'windwp/nvim-ts-autotag',
    after = 'nvim-treesitter',
  },

  {
    'p00f/nvim-ts-rainbow',
    after = 'nvim-treesitter',
  },

  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    after = 'nvim-treesitter',
  },

  -- {
  --   'windwp/nvim-autopairs',
  --   module = { 'nvim-autopairs' },
  --   config = function()
  --     require 'config.autopairs'.setup()
  --   end,
  -- },

  -- Completion
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
      require 'config.cmp'.setup()
    end,
    requires = {
      'onsails/lspkind.nvim',
    }
  },

  {
    'hrsh7th/cmp-nvim-lua',
    after = 'nvim-cmp'
  },

  {
    'hrsh7th/cmp-emoji',
    after = 'nvim-cmp',
  },

  {
    'hrsh7th/cmp-buffer',
    after = 'nvim-cmp',
  },

  {
    'hrsh7th/cmp-calc',
    after = 'nvim-cmp',
  },

  {
    'ray-x/cmp-treesitter',
    after = 'nvim-cmp',
  },

  -- LSP!
  {
    'neovim/nvim-lspconfig',
  },

  -- Config lsp with mason
  {
    'williamboman/mason-lspconfig.nvim',
    wants = { 'nvim-lspconfig', 'mason.nvim' },
    config = function()
      require 'mason-lspconfig'.setup()
    end,
  },
}

return { pkgs = pkgs }
