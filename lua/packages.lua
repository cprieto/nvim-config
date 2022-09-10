local pkgs = {
    -- Theme
    {
		'sainnhe/gruvbox-material',
		config = function()
			require'config.colorscheme'.setup()
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
     	-- commit = "1d449d44e01787ef17dc7b0672eec01a8121b36e",
	 	config = function()
	 		require'config.whichkey'.setup()
	 	end,
	 	event = "VimEnter",
	}--]]
}

return { pkgs = pkgs }
