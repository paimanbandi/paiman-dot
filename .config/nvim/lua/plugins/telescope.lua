require("telescope").load_extension("flutter")

local m = vim.api.nvim_set_keymap
local o = {noremap = true, silent = true}

m('n', '<leader>tt', ':Telescope<CR>', o)
m('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', o)
m('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', o)
