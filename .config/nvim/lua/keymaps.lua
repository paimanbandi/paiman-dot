local m = vim.api.nvim_set_keymap
local n = { noremap = true }
local s = { silent = true }
local o = { noremap = true, silent = true }

m("n", "<leader>q" , ":q<CR>"  , o)
m("n", "<leader>qx", ":q!<CR>" , o)
m("n", "<leader>x" , ":qa<CR>" , o)
m("n", "<leader>xx", ":qa!<CR>", o)

m("n", "<C-n>", ":NvimTreeToggle<CR>", o)
m("n", "<C-t>", ":ToggleTerm<CR>", o)

m("n", "<C-h>", "<C-w>h", s)
m("n", "<C-j>", "<C-w>j", s)
m("n", "<C-k>", "<C-w>k", s)
m("n", "<C-l>", "<C-w>l", s)

m("n", "<TAB>"  , ":bnext<CR>"    , s)
m("n", "<S-TAB>", ":bprevious<CR>", s)

m("i", "hh", "<ESC>", o)
m("i", "HH", "<ESC>", o)
m("x", "hh", "<ESC>", o)
m("x", "HH", "<ESC>", o)

m("", "<up>"   , "<nop>", n)
m("", "<down>" , "<nop>", n)
m("", "<left>" , "<nop>", n)
m("", "<right>", "<nop>", n)

m("v", "<", "<gv", o)
m("v", ">", ">gv", o)

m("x", "K", ":move '<--1<CR>gv-gv", o)
m("x", "J", ":move '>+1<CR>gv-gv", o)

m("n", "<leader>fe", ":set foldenable<CR>", o)
m("n", "<leader>nf", ":set nofoldenable<CR>", o)
m("n", "<leader>hl", ":set hls<CR>", o)
m("n", "<leader>nh", ":set nohls<CR>", o)

m("n", "<leader><CR>", ":so %<CR>", o)

m("", "<leader>c", '"+y', o)
m("n", "F", ":Format<CR>", o)

m("n", "K"        , "<Cmd>lua vim.lsp.buf.hover()<CR>", o)
m("n", "gd"       , "<Cmd>lua vim.lsp.buf.definition()<CR>", o)
m("n", "<leader>a", "<Cmd>lua vim.lsp.buf.code_action()<CR>", o)
m("n", "<leader>a", "<Cmd>lua vim.lsp.buf.range_code_action()<CR>", o)

