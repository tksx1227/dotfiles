require('bufferline').setup {
	options = {
		numbers = function(opts)
			return string.format("%s", opts.ordinal)
		end,
		-- NOTE: this plugin is designed with this icon in mind,
		-- and so changing this is NOT recommended, this is intended
		-- as an escape hatch for people who cannot bear it for whatever reason
		-- indicator_icon = '▎',
		-- buffer_close_icon = '',
		-- modified_icon = '●',
		-- close_icon = '',
		-- left_trunc_marker = '',
		-- right_trunc_marker = '',
		-- max_name_length = 18,
		-- max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		-- tab_size = 18,
		-- diagnostics = false,
		-- diagnostics_indicator = function(count, level, diagnostics_dict, context)
		--   return "(" .. count .. ")"
		-- end,
		-- NOTE: this will be called a lot so don't do any heavy processing here
		custom_filter = function(buf_number)
			-- -- filter out by buffer name
			if vim.fn.bufname(buf_number) == "" or vim.fn.bufname(buf_number) == "[No Name]" then
				return false
			end
			-- -- filter out based on arbitrary rules
			-- -- e.g. filter out vim wiki buffer from tabline in your work repo
			-- if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
			--   return true
			-- end
			return true
		end,
		-- offsets = {
		--   {filetype = "NvimTree", text = "File Explorer", text_align = "left" | "center" | "right"}
		-- },
		-- show_buffer_icons = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		-- show_tab_indicators = true
		-- persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		-- can also be a table containing 2 custom separators
		-- [focused and unfocused]. eg: { '|', '|' }
		-- separator_style = "thick",
		enforce_regular_tabs = true,
		-- always_show_bufferline = true
		-- sort_by = 'relative_directory'
	},
}

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map('n', '<Leader>1', ':BufferLineGoToBuffer 1<CR>', opt)
map('n', '<Leader>2', ':BufferLineGoToBuffer 2<CR>', opt)
map('n', '<Leader>3', ':BufferLineGoToBuffer 3<CR>', opt)
map('n', '<Leader>4', ':BufferLineGoToBuffer 4<CR>', opt)
map('n', '<Leader>5', ':BufferLineGoToBuffer 5<CR>', opt)
map('n', '<Leader>6', ':BufferLineGoToBuffer 6<CR>', opt)
map('n', '<Leader>7', ':BufferLineGoToBuffer 7<CR>', opt)
map('n', '<Leader>8', ':BufferLineGoToBuffer 8<CR>', opt)
map('n', '<Leader>9', ':BufferLineGoToBuffer 9<CR>', opt)

map("n", "<Leader>b", "<Cmd>BufferLinePick<CR>", opt)
map("n", "<Leader>c", "<Cmd>BufferLinePickClose<CR>", opt)
map("n", "H", "<Cmd>BufferLineCyclePrev<CR>", opt)
map("n", "L", "<Cmd>BufferLineCycleNext<CR>", opt)
map("n", "@", "<Cmd>BufferLineMovePrev<CR>", opt)
map("n", "#", "<Cmd>BufferLineMoveNext<CR>", opt)
