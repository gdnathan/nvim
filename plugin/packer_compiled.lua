-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/erudyx/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/erudyx/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/erudyx/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/erudyx/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/erudyx/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/Comment.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/cmp-tabnine"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/cmp-vsnip"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/git-messenger.vim"
  },
  ["grep.vim"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/grep.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  hasksyn = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/hasksyn"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["mapx.nvim"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/mapx.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  vim = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vim"
  },
  ["vim-better-whitespace"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vim-better-whitespace"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-tek-header"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vim-tek-header"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-windowswap"] = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vim-windowswap"
  },
  vimspector = {
    loaded = true,
    path = "/home/erudyx/.local/share/nvim/site/pack/packer/start/vimspector"
  }
}

time([[Defining packer_plugins]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-ts-context-commentstring'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
