" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'stsewd/fzf-checkout.vim'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ekalinin/Dockerfile.vim'

" haskell
Plug 'eagletmt/ghcmod-vim'
Plug 'Shougo/vimproc'
Plug 'neovimhaskell/haskell-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'

Plug 'godlygeek/tabular'
Plug 'npxbr/glow.nvim', {'do': ':GlowInstall', 'branch': 'main'}

Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

Plug 'tpope/vim-fugitive'
Plug 'tveskag/nvim-blame-line'
Plug 'mhinz/vim-signify'

Plug 'voldikss/vim-floaterm'

call plug#end()

colorscheme gruvbox

" vim colorscheme in tmux
set background=dark
set t_Co=256

set hidden
set nu
set rnu
set ruler
set mouse=a
set nobackup
set nowritebackup
set noswapfile
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set foldmethod=syntax
set autowrite
set history=1000
set cursorline

syntax sync fromstart
syntax on

filetype plugin indent on

" map leader to space
nnoremap <SPACE> <Nop>
let mapleader=" "

" nerdtree
au BufWinEnter * NERDTreeFin

let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeStatusline = ''
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" fzf & rg
let g:fzf_preview_window = 'right:60%'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8  }  }
let $FZF_DEFAULT_OPTS='--reverse'

nmap <C-f> :Files<CR>
nmap <C-g> :GFiles<CR>
nmap <C-r> :Rg<CR>

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
  \ 'coc-tsserver',
  \ 'coc-go',
  \ 'coc-json',
	\ 'coc-prettier',
	\ 'coc-eslint',
  \ 'coc-phpls'
  \ ]

""" auto-format imports (remove unused and order)
nmap <leader>i :CocCommand tsserver.organizeImports<cr>

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

" vim-go
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_fmt_command = "goimports"

" python
let g:pymode_python = 'python3'

" yaml/yml
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" ultisnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsListSnippets = "<c-tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/.config/nvim/']

" tsconfig
let g:syntastic_typescript_tsc_fname = ''

" nvim-blame-line
nnoremap <silent> <leader>b :ToggleBlameLine<CR>

" laravel
nmap lr :tabedit routes/api.php
nmap lmc :!php artisan make:controller
nmap lmm :!php artisan make:model

" floaterm
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'

let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

" vim-fugitive
nmap <leader>h :diffget //3<CR>
nmap <leader>u :diffget //2<CR>
nmap <leader>s :G<CR>
nmap <leader>co :GCheckout<CR>
nmap <leader>ct :Git commit<CR>
nmap <leader>ac :G add .<CR>
nmap <leader>lg :G log<CR>
nmap <leader>ri2 :G rebase -i HEAD~2<CR>
nmap <leader>ri3 :G rebase -i HEAD~3<CR>
nmap <leader>ri4 :G rebase -i HEAD~4<CR>
nmap <leader>ri5 :G rebase -i HEAD~5<CR>
nmap <leader>p :Gpush<CR>

" haskell
nmap <silent>hti :GhcModTypeInsert<CR>
nmap <silent>hs :GhcModSplitFunCase<CR>
nmap <leader>ht :GhcModType<cr>
nmap <leader>htc :GhcModTypeClear<cr>
au FileType haskell nmap <buffer> <leader>? :call ale#cursor#ShowCursorDetail()<cr>

let g:ale_linters ={
      \   'haskell': ['hlint', 'hdevtools', 'hfmt'],
      \}

" ghc-mod
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

" haskell-vim

let g:haskell_enable_quantification = 1  
let g:haskell_enable_recursivedo = 1   
let g:haskell_enable_arrowsyntax = 1     
let g:haskell_enable_pattern_synonyms = 1 
let g:haskell_enable_typeroles = 1    
let g:haskell_enable_static_pointers = 1  
let g:haskell_backpack = 1          

