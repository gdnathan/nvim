
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

" copy and past between vim and system
set clipboard+=unnamedplus
set nocp

set termguicolors

set mouse=a " activate the mouse
set tags+=/usr/include/**/tags " include user tags when generating tags
"exclude temp file from autocompletion
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite "
set autoread " edit vim file when modified somewhere else

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
set number " display line nbr at the left
silent! colorscheme gruvbox " choose color theme
let g:asmsyntax = 'nasm' " asm syntax
set mousemodel=popup " right click doesnt trigger visual mode