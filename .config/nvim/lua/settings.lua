local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

g.mapleader = ' '
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false

opt.number = true
opt.rnu = true
opt.showmatch = true
opt.foldmethod = 'syntax'
opt.splitright = true
opt.splitbelow = true

opt.cursorline = true
cmd[[au VimEnter * highlight CursorLine cterm=None ctermbg=241 ctermfg=None guibg=#171717 guifg=None]]

cmd[[au BufWritePre * :%s/\s\+$//e]]

exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)

opt.hidden = true
opt.history = 1000
opt.lazyredraw = true
opt.synmaxcol = 240

opt.termguicolors = true
cmd('colorscheme onedark')

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

cmd[[au BufEnter * set fo-=c fo-=r fo-=o]]

cmd[[autocmd FileType text,markdown,xml,html,xhtml,javascript setlocal cc=0]]

cmd[[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]

g.indentLine_char = '|'

cmd[[autocmd FileType markdown let g:indentLine_enabled=0]]

opt.completeopt = 'menuone,noselect,noinsert'

-- cmd[[autocmd BufEnter * EnableBlameLine]]

cmd[[
  augroup Format
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
]]
