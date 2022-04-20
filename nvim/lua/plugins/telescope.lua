local map = vim.api.nvim_set_keymap
local actions = require "telescope.actions"

require('telescope').setup{
	defaults = {
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
	pickers = {},
	extensions = {
		frecency = {
			ignore_patterns = { "*.git/*", "*/tmp/*", "*/node_modules/*" },
			db_safe_mode = false
		},
	}
}

-- Base {{{
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
-- }}}

-- Extension {{{
map(
	"n",
	"<leader><leader>",
	"<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>",
	{noremap = true, silent = true}
)
-- }}}
