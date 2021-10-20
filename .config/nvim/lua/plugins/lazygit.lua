local m = vim.api.nvim_set_keymap
local o = {noremap = true, silent = true}

m('n', '<leader>gg', ':LazyGit<CR>', o)
m('n', '<leader>gc', ':LazyGitConfig<CR>', o)

