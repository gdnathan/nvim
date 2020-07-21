" let &packpath = &runtimepath
" **************************************************
" key remapping
" **************************************************
map <C-e> :NERDTreeToggle<CR>
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
let mapleader=','

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'scrooloose/nerdtree' " tree
"Plug 'jistr/vim-nerdtree-tabs' " nerdtree as independant tab
Plug 'tpope/vim-fugitive' " git integration
Plug 'vim-airline/vim-airline'  " status bar at the bottom
Plug 'vim-airline/vim-airline-themes' " theme for airline
Plug 'airblade/vim-gitgutter' " +, - and ~ for git diff (added/removed/modified)
Plug 'vim-scripts/grep.vim' " search in working directory for a pattern
Plug 'vim-scripts/CSApprox' " colors in :terminal
Plug 'cohama/lexima.vim' " autaumatically close parenthesis, brackets...
"Plug 'majutsushi/tagbar'
Plug 'w0rp/ale' " linter
Plug 'Yggdroot/indentLine' " vertical line every 4-spaces indentation 
Plug 'sheerun/vim-polyglot' " every languages. do not slow startup
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
Plug 'ycm-core/YouCompleteMe'
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets' " create empty condition statement
Plug 'tomasr/molokai'
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']} " create empty statement for c and cpp
Plug 'ludwig/split-manpage.vim'
Plug 'Nero-F/vim-tek-header'
Plug 'ycm-core/YouCompleteMe'
Plug 'nelsyeung/twig.vim'

" php plugins

Plug 'arnaud-lb/vim-php-namespace'

call plug#end()

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Fix backspace indent
set backspace=indent,eol,start
"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
"" Enable hidden buffers
set hidden
"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set mouse=a " activate the mouse
set tags+=/usr/include/**/tags " include user tags when generating tags
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite " make vim ignore [patern] files
set autoread " edit vim file when modified somewhere else

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on "turn on colors
set number " display line nbr at the left
silent! colorscheme molokai " activate molokai color theme
set mousemodel=popup " right click doesnt trigger visual mode

" Syntax highlight
let g:polyglot_disabled = ['python'] " Default highlight is better than polyglot
let python_highlight_all = 1

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
autocmd StdinReadPre * let s:std_in=1 " dunno
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif "open NERDTree if you just type "vim"
autocmd CursorHold,CursorHoldI * update " autosave

"" txt
augroup vimrc-wrapping
    autocmd!
    autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
    autocmd!
    autocmd FileType make setlocal noexpandtab
    autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END


" ripgrep
if executable('rg')
    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
    set grepprg=rg\ --vimgrep
    command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

" indentation
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab colorcolumn=80
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab colorcolumn=80
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=80

" **************************************************
" NERDTree configuration
" **************************************************

let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', '\.o$']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
let NERDTreeShowHidden=1

" nerdtree file highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" **************************************************
" YouCompleteMe configuration
" **************************************************

let g:ycm_auto_trigger = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<C-Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<C-Up>']
let g:ycm_key_list_stop_completion = ['<Enter>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
let g:ycm_filetype_blacklist = { 'php': 1 }

"*****************************************************************************
"" Vim-ariline configuration
"*****************************************************************************
let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
"  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
"  let g:airline_symbols.paste     = 'Þ'
"  let g:airline_symbols.paste     = '∥'
"  let g:airline_symbols.whitespace = 'Ξ'
  let g:airline_symbols.readonly = ''
"  let g:airline_symbols.linenr = ''

"*****************************************************************************
"" Php Namespace configuration
"*****************************************************************************

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

