local map = vim.api.nvim_set_keymap
local actions = require "telescope.actions"

require('telescope').setup{
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		mappings = {
			i = {
				["<C-h>"] = "which_key",
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			},
			n = {
				["<C-c>"] = actions.close,
			}
		}
	},
	pickers = {
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
	},
	extensions = {
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		-- }
		-- please take a look at the readme of the extension you want to configure
	}
}

map(
	'n',
	'<Leader>ff',
	':lua require("telescope.builtin").find_files()<cr>',
	{noremap = true, silent = true}
)

map(
	'n',
	'<Leader>fg',
	':lua require("telescope.builtin").live_grep()<cr>',
	{noremap = true, silent = true}
)

map(
	'n',
	'<Leader>fb',
	':lua require("telescope.builtin").buffers()<cr>',
	{noremap = true, silent = true}
)

map(
	'n',
	'<Leader>fh',
	':lua require("telescope.builtin").help_tags()<cr>',
	{noremap = true, silent = true}
)
