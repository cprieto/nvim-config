local installed, packer = require'utils'.packages()

packer.startup(function(use)
    -- Packer handles itself
    use 'wbthomason/packer.nvim'

	-- Theme
	use {
		'sainnhe/gruvbox-material',
		config = function()
			require'config.colorscheme'.setup()
		end,
	}

	-- Startup screen
	use {
    	'goolord/alpha-nvim',
        wants = 'nvim-web-devicons',
    	config = function()
            require'config.alpha'.setup()
    	end
  	}

	-- **** Lazy modules required by others ****
  	use {
		'nvim-lua/plenary.nvim',
		module = 'plenary',
	}

  	use {
		'kyazdani42/nvim-web-devicons',
		module = 'nvim-web-devicons',
		config = function()
			require'nvim-web-devicons'.setup { default = true }
		end,
	}

	-- Status line
	use {
		'nvim-lualine/lualine.nvim',
		wants = 'nvim-web-devicons',
		event = 'VimEnter',
		opt = true,
		config = function()
			require'config.lualine'.setup()
		end,
	}

    if installed then
        packer.sync()
    end
end)