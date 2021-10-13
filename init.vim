source $HOME/.config/nvim/vim-config/plugins.vim
source $HOME/.config/nvim/vim-config/mapping.vim
source $HOME/.config/nvim/vim-config/settings.vim
source $HOME/.config/nvim/vim-config/commands.vim

source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/illuminate.vim
source $HOME/.config/nvim/plug-config/indentline.vim

luafile $HOME/.config/nvim/lua/plug-colorizer.lua
lua require('init')
