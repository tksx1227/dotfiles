vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	----------------------------------------------------------------
	-- Library

	--------------------------------
	-- Lua Library
	use { 'tami5/sqlite.lua', module = 'sqlite' }
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'

	----------------------------------------------------------------
	-- LSP & Completion

	-----------------------------------
	-- Auto Completion
	use {
		'hrsh7th/nvim-cmp',
		after = { 'LuaSnip', 'nvim-autopairs', 'lspkind-nvim' },
		config = function()
			require('plugins.nvim-cmp')
		end,
	}
	use {
		'onsails/lspkind-nvim',
		event = 'VimEnter',
		config = function ()
			require('plugins.lspkind-nvim')
		end,
	}
	use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' }
	use { 'hrsh7th/cmp-nvim-lsp-signature-help', after = 'nvim-cmp' }
	use { 'hrsh7th/cmp-nvim-lsp-document-symbol', after = 'nvim-cmp' }
	use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }
	use { 'hrsh7th/cmp-path', after = 'nvim-cmp' }
	use { 'hrsh7th/cmp-omni', after = 'nvim-cmp' }
	use { 'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp' }
	use { 'hrsh7th/cmp-emoji', after = 'nvim-cmp' }
	use { 'hrsh7th/cmp-calc', after = 'nvim-cmp' }
	use { 'f3fora/cmp-spell', after = 'nvim-cmp' }
	use { 'yutkat/cmp-mocword', after = 'nvim-cmp' }
	use { 'uga-rosa/cmp-dictionary', after = 'nvim-cmp' }
	use { 'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp' }
	use {
		'tzachar/cmp-tabnine',
		run = './install.sh',
		after = 'nvim-cmp',
	}
	use { 'ray-x/cmp-treesitter', after = 'nvim-cmp' }
	use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' }

	--------------------------------
	-- Language Server Protocol(LSP)
	use {
		'neovim/nvim-lspconfig',
		after = 'cmp-nvim-lsp',
		config = function()
			require('plugins.nvim-lspconfig')
		end,
	}
	use {
		'williamboman/nvim-lsp-installer',
		after = { 'nvim-lspconfig', 'vim-illuminate', 'nlsp-settings.nvim', 'cmp-nvim-lsp' },
		config = function()
			require('plugins.nvim-lsp-installer')
		end,
	}
	use {
		'tamago324/nlsp-settings.nvim',
		after = 'nvim-lspconfig',
		config = function()
			require('plugins.nlsp-settings')
		end,
	}
	use { 'weilbith/nvim-lsp-smag', after = 'nvim-lspconfig' }

	----------------------------------------------------------------
	-- Finder

	-----------------------------------
	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = 'nvim-lua/plenary.nvim',
		event = 'VimEnter',
		config = function()
			require("plugins.telescope")
		end,
	}
	-- Telescope Extension
	use {
		'nvim-telescope/telescope-frecency.nvim',
		requires = 'tami5/sqlite.lua',
		after = 'telescope.nvim',
		config = function()
			require('telescope').load_extension('frecency')
		end,
	}

	-----------------------------------
	-- Neo-tree
	use {
		'nvim-neo-tree/neo-tree.nvim',
		branch = 'main',
		requires = {
			'nvim-lua/plenary.nvim',
			'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
			'MunifTanjim/nui.nvim',
		},
	}

	----------------------------------------------------------------
	-- Appearance

	--------------------------------
	-- Syntax

	use {
		'RRethy/vim-illuminate',
		event = 'VimEnter',
		config = function()
			require('plugins.vim-illuminate')
		end,
	}

	-----------------------------------
	-- Tree-Sitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		event = 'VimEnter',
		config = function ()
			require('plugins.nvim-treesitter')
		end,
	}

	-----------------------------------
	-- Status Line
	use {
		'nvim-lualine/lualine.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		event = 'VimEnter',
		config = function ()
			require('plugins.lualine')
		end,
	}

	-----------------------------------
	-- Buffer Line
	use {
		'akinsho/bufferline.nvim',
		tag = '*',
		requires = 'kyazdani42/nvim-web-devicons',
	}

	-----------------------------------
	-- Scrollbar
	use {
		'petertriho/nvim-scrollbar',
		event = 'VimEnter',
		after = 'tokyonight.nvim',
		config = function()
			require('plugins.nvim-scrollbar')
		end,
	}

	-----------------------------------
	-- Indent
	use {
		'lukas-reineke/indent-blankline.nvim',
		event = 'VimEnter',
		config = function()
			require('plugins.indent-blankline')
		end,
	}

	-----------------------------------
	-- ColorScheme
	use 'folke/tokyonight.nvim'

	----------------------------------------------------------------
	-- Git

	use 'lewis6991/gitsigns.nvim'

	----------------------------------------------------------------
	-- Coding

	-----------------------------------
	-- Snippets
	use	{
		'L3MON4D3/LuaSnip',
		-- event = 'VimEnter',
		config = function()
			require('plugins.luasnip')
		end,
	}

	-----------------------------------
	-- Comment
	use {
		'numToStr/Comment.nvim',
		event = 'VimEnter',
		config = function()
			require('plugins.comment')
		end,
	}

	-----------------------------------
	-- Brackets
	use	{
		'windwp/nvim-autopairs',
		event = 'VimEnter',
		config = function()
			require('plugins.nvim-autopairs')
		end,
	}

end)
