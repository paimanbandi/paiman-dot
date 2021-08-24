"============ vim-plug ============"
call plug#begin('~/.local/share/nvim/plugged')

"---------- color scheme ----------"
Plug 'gruvbox-community/gruvbox'

"---------- status bar ------------"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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

"--------- file explorer ----------"
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'

autocmd BufWinEnter * NERDTree
autocmd BufWinEnter * wincmd p

let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeStatusline = ''
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

nmap <leader>t :NERDTreeToggle<CR>

" file icons
Plug 'ryanoasis/vim-devicons'



"------------ fzf & rg ------------"
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'stsewd/fzf-checkout.vim'

let g:fzf_preview_window = 'right:60%'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

nmap <C-f> :Files<CR>
nmap <C-g> :GFiles<CR>
nmap <C-r> :Rg<CR>

"------------ js fam --------------"
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'

au BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
au BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


"------------ flutter -------------"
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'


"------------ golang --------------"
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_fmt_command = "goimports"

"------------ haskell -------------"
Plug 'eagletmt/ghcmod-vim'
Plug 'Shougo/vimproc'
Plug 'neovimhaskell/haskell-vim'

map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_static_pointers = 1
let g:haskell_backpack = 1

nmap <silent>hti :GhcModTypeInsert<CR>
nmap <silent>hs :GhcModSplitFunCase<CR>
nmap <leader>ht :GhcModType<cr>
nmap <leader>htc :GhcModTypeClear<cr>
au FileType haskell nmap <buffer> <leader>? :call ale#cursor#ShowCursorDetail()<cr>

let g:ale_linters ={
      \   'haskell': ['hlint', 'hdevtools', 'hfmt'],
      \}

"------------- elixir -------------"
Plug 'elixir-editors/vim-elixir'

"------------- docker -------------"
Plug 'ekalinin/Dockerfile.vim'

"--------- auto complete ----------"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
  \ 'coc-phpls',
  \ 'coc-flutter'
  \ ]

nmap <leader>i :CocCommand tsserver.organizeImports<cr>

"---------- auto pairs ------------"
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'

let g:rainbow_active = 1

"-------- multiple cursor ---------"
Plug 'mg979/vim-visual-multi'


"-------- syntax checking ---------"
Plug 'vim-syntastic/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_typescript_tsc_fname = ''

"------------ tabular -------------"
Plug 'godlygeek/tabular'

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif
"}}

"-------- markdown preview --------"
Plug 'npxbr/glow.nvim', {'do': ':GlowInstall', 'branch': 'main'}

nmap <leader>g :Glow<CR>

"--------- color preview ----------"
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

let g:Hexokinase_highlighters = [ 'virtual' ]

"--------- code snippets ----------"
Plug 'SirVer/ultisnips'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsListSnippets = "<c-tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/.config/nvim/']

Plug 'mlaursen/vim-react-snippets'
Plug 'mattn/emmet-vim'

"---------- git wrapper -----------"
Plug 'tpope/vim-fugitive'

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
nmap <leader>p :G push<CR>

Plug 'tveskag/nvim-blame-line'
nnoremap <silent> <leader>b :ToggleBlameLine<CR>

Plug 'mhinz/vim-signify'

"-------- terminal manager --------"
Plug 'voldikss/vim-floaterm'

let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'

let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

"----------- prettier -------------"
Plug 'prettier/vim-prettier'

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.less,*.scss,*.json PrettierAsync

call plug#end()


"========= basic settings ========="
set nocompatible

colorscheme gruvbox
set background=dark

" vim color scheme in tmux
set t_Co=256

set autochdir
set showcmd
set hidden
set nu
set rnu
set ruler

set mouse=a
set so=8

set nobackup
set nowritebackup
set noswapfile
set autowrite
set autoread

set ts=2 sts=2 shiftwidth=2
set et sta si
set list listchars=tab:\ \ ,trail:·

set foldmethod=syntax
set history=1000
set cursorcolumn
set cursorline
highlight CursorLine cterm=None ctermbg=241 ctermfg=None guibg=None guifg=None
set colorcolumn=81

set incsearch
set nohlsearch

syntax enable
syntax sync fromstart
syntax on

filetype plugin indent on

" xterm-bracketed-paste
if &term =~ "screen"
	let &t_BE = "\e[?2004h"
	let &t_BD = "\e[?2004l"
	exec "set t_PS=\e[200~"
	exec "set t_PE=\e[201~"
endif

"============= map ============="

" space as leader key
nmap <SPACE> <Nop>
let mapleader=" "

" hh for esc
imap hh <esc>

nmap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nmap <leader>pi :PlugInstall<CR>
nmap <leader>q :q<CR>
nmap <leader>qa :qa<CR>
nmap <leader>w :w<CR>
nmap <leader>x :wqa<CR>

vmap <Tab> >
vmap <S-Tab> <


" laravel
nmap lr :tabedit routes/api.php
nmap lmc :!php artisan make:controller
nmap lmm :!php artisan make:model


"============= others ============="

" auto-remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e


" conf highlight
au BufReadPost *.conf set syntax=dosini
au BufReadPost *.tmux.conf set syntax=tmux


" python
let g:pymode_python = 'python3'

