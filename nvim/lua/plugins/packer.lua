vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

	----------------------------------------------------------------
	-- Plugin Manager

	-- Packer
	use 'wbthomason/packer.nvim'

	----------------------------------------------------------------
	-- Finder

	-----------------------------------
	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	-- Telescope Extension
	use {
		'nvim-telescope/telescope-frecency.nvim',
		config = function()
			require'telescope'.load_extension('frecency')
		end,
		requires = { 'tami5/sqlite.lua' }
	}

	-----------------------------------
	-- Neo-tree
	use {
		'nvim-neo-tree/neo-tree.nvim',
		branch = 'v2.x',
		requires = {
			'nvim-lua/plenary.nvim',
			'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
			'MunifTanjim/nui.nvim',
		}
	}

	----------------------------------------------------------------
	-- Appearance

	-----------------------------------
	-- Tree-Sitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-----------------------------------
	-- Status Line
	use {
		'nvim-lualine/lualine.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
	}

	-----------------------------------
	-- Buffer Line
	use {
		'akinsho/bufferline.nvim',
		tag = "*",
		requires = 'kyazdani42/nvim-web-devicons',
	}

	-----------------------------------
	-- ColorScheme
	use 'folke/tokyonight.nvim'

	----------------------------------------------------------------
	-- Git

	use 'lewis6991/gitsigns.nvim'

	----------------------------------------------------------------
	-- Utils

	use 'petertriho/nvim-scrollbar'
	use "lukas-reineke/indent-blankline.nvim"
	use 'numToStr/Comment.nvim'
	use 'windwp/nvim-autopairs'

end)
