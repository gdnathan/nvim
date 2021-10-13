call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall' " ONLY FOR LINUX BUILD
Plug 'nvim-lua/lsp-status.nvim'

" completion tools:
Plug 'hrsh7th/nvim-cmp/'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'


"Plug 'puremourning/vimspector' " require python 3
" extention for builtin lsp support
"Plug 'mfussenegger/nvim-jdtls'
"
Plug 'travitch/hasksyn' " syntax hightlighting for haskell

Plug 'preservim/nerdtree' " tree view
Plug 'tpope/vim-fugitive' " git integration
Plug 'vim-airline/vim-airline'  " status bar at the bottom
Plug 'vim-airline/vim-airline-themes' " theme for airline
Plug 'airblade/vim-gitgutter' " +, - and ~ for git diff (added/removed/modified)
Plug 'vim-scripts/grep.vim' " search in working directory for a pattern

Plug 'norcalli/nvim-colorizer.lua' " highlight hexa colors in coresponding color
Plug 'mhinz/vim-startify' " starting screen
"Plug 'rhysd/vim-clang-format'
Plug 'windwp/nvim-autopairs' " autaumatically close parenthesis, brackets...
Plug 'tpope/vim-commentary' " comment element with gc (ex: gcc = comment a line)
Plug 'RRethy/vim-illuminate' " highlight other uses of the word under the cursor
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'tpope/vim-surround' " use cs\"' to change \"bite\" into 'bite', stuff like that
Plug 'psliwka/vim-smoothie' " nice and smooth scroll
Plug 'ntpeters/vim-better-whitespace' " every trailing spaces in RED. :StripWhitespaces to del them all
Plug 'wesQ3/vim-windowswap' " swap window <leader>ww to select and swap
"Plug 'AndrewRadev/tagalong.vim' " HTML/XML: change name of corresponding tags
" Plug 'Yggdroot/indentLine' " vertical line every 4-spaces indentation

" Languages
"Plug 'neovimhaskell/haskell-vim'
"Plug 'rust-lang/rust.vim'

Plug 'dkasak/gruvbox'
Plug 'Nero-F/vim-tek-header'
"Plug 'vbe0201/vimdiscord' " add RPC to discord
Plug 'ryanoasis/vim-devicons' " icons
Plug 'rhysd/git-messenger.vim'
" Plug 'dense-analysis/ale' " linter UwU
call plug#end()
