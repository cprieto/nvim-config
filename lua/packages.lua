local pkgs = {
    -- Theme
  {
		'folke/tokyonight.nvim',
		config = function()
			vim.cmd [[colorscheme tokyonight]]
		end,
	},

    -- Startup screen
	{
    	'goolord/alpha-nvim',
        wants = 'nvim-web-devicons',
    	config = function()
            require'config.alpha'.setup()
    	end
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
			require'nvim-web-devicons'.setup { default = true }
		end,
	},

	-- Status line
	{
		'nvim-lualine/lualine.nvim',
		wants = 'nvim-web-devicons',
		event = 'VimEnter',
		opt = true,
		config = function()
			require'config.lualine'.setup()
		end,
	},

	-- WhichKey
	{
		"folke/which-key.nvim",
	 	config = function()
	 		require'config.whichkey'.setup()
	 	end,
	 	event = "VimEnter",
	},

	-- File tree
	{
		'kyazdani42/nvim-tree.lua',
		wants = 'nvim-web-devicons',
		cmd = { 'NvimTreeToggle', 'NvimTreeClose' },
		config = function()
      require'config.nvimtree'.setup()
		end,
	},

  -- Tabline
  {
    'akinsho/bufferline.nvim',
    wants = 'nvim-web-devicons',
    event = 'VimEnter',
    config = function()
      require'config.bufferline'.setup()
    end,
  },

  -- Indent lines
  {
    'lukas-reineke/indent-blankline.nvim',
	event = 'BufReadPre',
	config = function()
		require'config.indentlines'.setup()
	end,
  },

  -- Treesitter
  {
	'nvim-treesitter/nvim-treesitter',
	event = 'BufRead',
	run = function()
		require'nvim-treesitter.install'.update {
			with_sync = true
		}
	end,
	config = function()
		require'config.treesitter'.setup()
	end,
  }
}

return { pkgs = pkgs }
