local actions = require 'telescope.actions'

require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ['<C-h>'] = 'which_key',
                ['<C-j>'] = actions.move_selection_next,
                ['<C-k>'] = actions.move_selection_previous,
            },
            n = {
                ['<C-c>'] = actions.close,
            }
        }
    },
    pickers = {},
    extensions = {
        frecency = {
            ignore_patterns = { '*.git/*', '*/tmp/*', '*/node_modules/*' },
            db_safe_mode = false
        },
    }
}
