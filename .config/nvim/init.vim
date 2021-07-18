" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ekalinin/Dockerfile.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-syntastic/syntastic'

Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'
Plug 'npxbr/glow.nvim', {'do': ':GlowInstall', 'branch': 'main'}

Plug 'ryanoasis/vim-devicons'

Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

call plug#end()

colorscheme gruvbox

" vim colorscheme in tmux
set background=dark
set t_Co=256

set hidden
set nu
set ruler
set mouse=a
set nobackup
set nowritebackup
set noswapfile
set tabstop=2 softtabstop=2 shiftwidth=2
set foldmethod=syntax

syntax sync fromstart
syntax on

filetype plugin indent on

" nerdtree
au BufWinEnter * NERDTreeFind

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeStatusline = ''
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

" fzf & rg
silent! nmap <C-f> :Files<CR>
silent! nmap <C-g> :GFiles<CR>
silent! nmap <C-r> :Rg!

" js family
au BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
au BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> K :call CocAction('doHover')<CR>

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

" autoformat
au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" xterm-bracketed-paste
if &term =~ "screen"
	let &t_BE = "\e[?2004h"
	let &t_BD = "\e[?2004l"
	exec "set t_PS=\e[200~"
	exec "set t_PE=\e[201~"
endif

" conf highlight
au BufEnter,BufRead *conf* setf dosini

" hexokinase
let g:Hexokinase_highlighters = [ 'virtual' ]

" glow
nmap <leader>g :Glow<CR>
