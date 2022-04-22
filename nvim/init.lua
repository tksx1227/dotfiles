--  _   _                 _           
-- | \ | | ___  _____   _(_)_ __ ___  
-- |  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
-- | |\  |  __/ (_) \ V /| | | | | | |
-- |_| \_|\___|\___/ \_/ |_|_| |_| |_|
--

-- Read base config files
require('config.options')
require('config.keymap')
require('config.colorscheme')

-- Read plugins
require('plugins.packer')
vim.cmd[[autocmd BufWritePost packer.lua PackerCompile]]

-- Read plugin config files
require('plugins.telescope')
require('plugins.comment')
require('plugins.lualine')
require('plugins.neo-tree')
require('plugins.nvim-autopairs')
require('plugins.gitsigns')
require('plugins.nvim-scrollbar')
require('plugins.nvim-treesitter')
require('plugins.indent-blankline')
