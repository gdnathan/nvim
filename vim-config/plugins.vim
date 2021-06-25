call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'preservim/nerdtree' " tree view
Plug 'tpope/vim-fugitive' " git integration
Plug 'vim-airline/vim-airline'  " status bar at the bottom
Plug 'vim-airline/vim-airline-themes' " theme for airline
Plug 'airblade/vim-gitgutter' " +, - and ~ for git diff (added/removed/modified)
Plug 'vim-scripts/grep.vim' " search in working directory for a pattern

Plug 'norcalli/nvim-colorizer.lua' " highlight hexa colors in coresponding color
Plug 'mhinz/vim-startify' " starting screen
Plug 'rhysd/vim-clang-format'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'liuchengxu/vista.vim' " search lsp symbol (jump to deffinition)
Plug 'neoclide/coc.nvim', {'branch': 'release'} " language server
Plug 'cohama/lexima.vim' " autaumatically close parenthesis, brackets...
Plug 'kevinhwang91/rnvimr' " floating window :oo
Plug 'tpope/vim-commentary' " comment element with gc (ex: gcc = comment a line)
Plug 'RRethy/vim-illuminate' " highlight other uses of the word under the cursor
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'tpope/vim-surround' " use cs\"' to change \"bite\" into 'bite', stuff like that
Plug 'junegunn/gv.vim' " use gv to have a nice git log view
Plug 'psliwka/vim-smoothie' " nice and smooth scroll
Plug 'ntpeters/vim-better-whitespace' " every trailing spaces in RED. :StripWhitespaces to del them all
Plug 'wesQ3/vim-windowswap' " swap window <leader>ww to select and swap
"Plug 'AndrewRadev/tagalong.vim' " HTML/XML: change name of corresponding tags
Plug 'Yggdroot/indentLine' " vertical line every 4-spaces indentation
Plug 'sheerun/vim-polyglot' " every languages. do not slow startup

" Languages
Plug 'neovimhaskell/haskell-vim'
Plug 'rust-lang/rust.vim'

Plug 'dkasak/gruvbox'
Plug 'Nero-F/vim-tek-header'
Plug 'vbe0201/vimdiscord' " add RPC to discord
Plug 'ryanoasis/vim-devicons' " icons
Plug 'rhysd/git-messenger.vim'
" Plug 'dense-analysis/ale' " linter UwU
call plug#end()
