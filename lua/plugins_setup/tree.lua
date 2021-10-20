require('nvim-tree').setup {
    auto_close          = true,
    open_on_setup       = true,
}

require'mapx'.setup{ global = true }

map("<C-e>", ":NvimTreeToggle<Cr>")
