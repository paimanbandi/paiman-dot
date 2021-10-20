local m = vim.api.nvim_set_keymap
local o = {noremap = true, silent = true}

m('n', '<leader>pi', ':PackerInstall<CR>', o)
m('n', '<leader>pc', ':PackerClean<CR>', o)
m('n', '<leader>ps', ':PackerSync<CR>', o)
