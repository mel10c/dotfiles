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
local package_path_str = "/Users/melaneyzhu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/melaneyzhu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/melaneyzhu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/melaneyzhu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/melaneyzhu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\fcomment\17plugins.misc\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/Comment.nvim"
  },
  ["TrueZen.nvim"] = {
    commands = { "TZMinimalist", "TZFocus", "TZAtaraxis" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/TrueZen.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.bufferline\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/bufferline.nvim"
  },
  ["bullets.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/bullets.vim"
  },
  ["cmp-buffer"] = {
<<<<<<< HEAD
    after_files = { "/home/melaney/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
=======
    after_files = { "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
<<<<<<< HEAD
    load_after = {},
    loaded = true,
=======
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-buffer"
  },
  ["cmp-calc"] = {
<<<<<<< HEAD
    after_files = { "/home/melaney/.local/share/nvim/site/pack/packer/opt/cmp-calc/after/plugin/cmp_calc.lua" },
    load_after = {},
    loaded = true,
=======
    after_files = { "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-calc/after/plugin/cmp_calc.lua" },
<<<<<<< HEAD
    load_after = {},
    loaded = true,
=======
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-calc"
  },
  ["cmp-latex-symbols"] = {
    after_files = { "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-latex-symbols/after/plugin/cmp_latex.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-latex-symbols"
  },
  ["cmp-nvim-lsp"] = {
<<<<<<< HEAD
    after_files = { "/home/melaney/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/melaney/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/melaney/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {},
=======
    loaded = true,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
<<<<<<< HEAD
    load_after = {},
    loaded = true,
=======
    load_after = {
      ["nvim-cmp"] = true
    },
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
    loaded = false,
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua"
  },
  ["cmp-nvim-ultisnips"] = {
    after_files = { "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips/after/plugin/cmp_nvim_ultisnips.lua" },
    load_after = {
      ultisnips = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
<<<<<<< HEAD
    after_files = { "/home/melaney/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
=======
    after_files = { "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
<<<<<<< HEAD
    load_after = {},
    loaded = true,
=======
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/cmp-path"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.statusline\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.gitsigns\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vindent\17plugins.misc\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14signature\17plugins.misc\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.lspsaga\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.nightfox\frequire\0" },
    loaded = true,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/start/nightfox.nvim"
  },
  ["nvim-autopairs"] = {
<<<<<<< HEAD
    config = { "\27LJ\1\2>\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\14autopairs\17plugins.misc\frequire\0" },
    load_after = {},
    loaded = true,
=======
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14autopairs\17plugins.misc\frequire\0" },
<<<<<<< HEAD
    load_after = {},
    loaded = true,
=======
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-cmp"] = {
<<<<<<< HEAD
    after = { "lspsaga.nvim", "vim-dadbod-completion", "nvim-autopairs", "cmp-buffer", "cmp-calc", "cmp-nvim-lua", "cmp-path" },
    loaded = true,
    only_config = true
=======
<<<<<<< HEAD
    after = { "cmp-nvim-lsp", "cmp-nvim-lua", "nvim-autopairs", "vim-dadbod-completion", "cmp-path", "cmp-buffer", "cmp-calc" },
    loaded = true,
    only_config = true
=======
    after = { "vim-dadbod-completion", "nvim-autopairs", "cmp-buffer", "cmp-path", "cmp-calc", "cmp-nvim-lua" },
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16plugins.cmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/nvim-cmp"
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
  },
  ["nvim-code-action-menu"] = {
    commands = { "CodeActionMenu" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/nvim-code-action-menu"
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
  },
  ["nvim-colorizer.lua"] = {
    commands = { "ColorizerToggle" },
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14colorizer\17plugins.misc\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim" },
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.lspconfig\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus" },
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.NvimTree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    after = { "bufferline.nvim", "galaxyline.nvim" },
    loaded = true,
    only_config = true
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope-ultisnips.nvim"] = {
    loaded = true,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/start/telescope-ultisnips.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "TroubleToggle" },
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\ftrouble\17plugins.misc\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/trouble.nvim"
  },
  ultisnips = {
    after = { "cmp-nvim-ultisnips" },
    after_files = { "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    config = { "\27LJ\2\nC\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\0\0=\1\2\0K\0\1\0&UltiSnipsRemoveSelectModeMappings\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/ultisnips"
  },
  ["vim-dadbod-completion"] = {
<<<<<<< HEAD
    after_files = { "/home/melaney/.local/share/nvim/site/pack/packer/opt/vim-dadbod-completion/after/plugin/vim_dadbod_completion.lua", "/home/melaney/.local/share/nvim/site/pack/packer/opt/vim-dadbod-completion/after/plugin/vim_dadbod_completion.vim" },
    load_after = {},
    loaded = true,
=======
    after_files = { "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-dadbod-completion/after/plugin/vim_dadbod_completion.lua", "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-dadbod-completion/after/plugin/vim_dadbod_completion.vim" },
<<<<<<< HEAD
    load_after = {},
    loaded = true,
=======
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
    needs_bufread = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-dadbod-completion"
  },
  ["vim-easy-align"] = {
    commands = { "EasyAlign" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-easy-align"
  },
  ["vim-matchup"] = {
    after_files = { "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-matchup"
  },
  ["vim-pandoc"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-pandoc"
  },
  ["vim-pandoc-syntax"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-pandoc-syntax"
  },
  ["vim-surround"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-surround"
  },
  ["vim-table-mode"] = {
    commands = { "TableModeEnable" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-table-mode"
  },
  vimtex = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vvimtex\17plugins.misc\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vimtex"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/which-key.nvim"
  },
  ["wildfire.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/wildfire.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\18gitsigns.nvim\21packer_lazy_load\tutil\frequire\0", "setup", "gitsigns.nvim")
time([[Setup for gitsigns.nvim]], false)
time([[packadd for gitsigns.nvim]], true)
vim.cmd [[packadd gitsigns.nvim]]
time([[packadd for gitsigns.nvim]], false)
-- Setup for: nvim-lspconfig
time([[Setup for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0006if &ft == \"packer\" | echo \"\" | else | silent! e %\bcmd\bvimr\1\0\4\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0003\2\6\0)\3\0\0B\0\3\1K\0\1\0\0\rdefer_fn\bvim\19nvim-lspconfig\21packer_lazy_load\tutil\frequire\0", "setup", "nvim-lspconfig")
time([[Setup for nvim-lspconfig]], false)
time([[packadd for nvim-lspconfig]], true)
vim.cmd [[packadd nvim-lspconfig]]
time([[packadd for nvim-lspconfig]], false)
-- Setup for: vim-matchup
time([[Setup for vim-matchup]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\16vim-matchup\21packer_lazy_load\tutil\frequire\0", "setup", "vim-matchup")
time([[Setup for vim-matchup]], false)
<<<<<<< HEAD
=======
-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
<<<<<<< HEAD
try_loadstring("\27LJ\1\2O\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0%\1\3\0>\0\2\1G\0\1\0\18gitsigns.nvim\21packer_lazy_load\tutil\frequire\0", "setup", "gitsigns.nvim")
=======
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\18gitsigns.nvim\21packer_lazy_load\tutil\frequire\0", "setup", "gitsigns.nvim")
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
time([[Setup for gitsigns.nvim]], false)
time([[packadd for gitsigns.nvim]], true)
vim.cmd [[packadd gitsigns.nvim]]
time([[packadd for gitsigns.nvim]], false)
<<<<<<< HEAD
-- Setup for: vim-matchup
time([[Setup for vim-matchup]], true)
try_loadstring("\27LJ\1\2M\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0%\1\3\0>\0\2\1G\0\1\0\16vim-matchup\21packer_lazy_load\tutil\frequire\0", "setup", "vim-matchup")
time([[Setup for vim-matchup]], false)
-- Config for: surround.nvim
time([[Config for surround.nvim]], true)
try_loadstring("\27LJ\1\2U\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\19mappings_style\rsurround\nsetup\rsurround\frequire\0", "config", "surround.nvim")
time([[Config for surround.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22plugins.lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16plugins.cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
=======
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
<<<<<<< HEAD
=======
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plugins.icons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
<<<<<<< HEAD
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\0020\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\21plugins.gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\23plugins.statusline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\1\2<\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\fcomment\17plugins.misc\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
=======
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.nightfox\frequire\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
<<<<<<< HEAD
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22plugins.dashboard\frequire\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\1\2>\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\14autopairs\17plugins.misc\frequire\0", "config", "nvim-autopairs")

vim.cmd [[ packadd cmp-calc ]]
vim.cmd [[ packadd cmp-buffer ]]
vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd vim-dadbod-completion ]]
vim.cmd [[ packadd bufferline.nvim ]]

-- Config for: bufferline.nvim
try_loadstring("\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\23plugins.bufferline\frequire\0", "config", "bufferline.nvim")
=======
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.nightfox\frequire\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16plugins.cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plugins.icons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
<<<<<<< HEAD
=======
vim.cmd [[ packadd bufferline.nvim ]]

-- Config for: bufferline.nvim
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.bufferline\frequire\0", "config", "bufferline.nvim")
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b

>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
vim.cmd [[ packadd galaxyline.nvim ]]

-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.statusline\frequire\0", "config", "galaxyline.nvim")

vim.cmd [[ packadd bufferline.nvim ]]

<<<<<<< HEAD
-- Config for: bufferline.nvim
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.bufferline\frequire\0", "config", "bufferline.nvim")
=======
-- Config for: lsp_signature.nvim
<<<<<<< HEAD
try_loadstring("\27LJ\1\2>\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\14signature\17plugins.misc\frequire\0", "config", "lsp_signature.nvim")
=======
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14signature\17plugins.misc\frequire\0", "config", "lsp_signature.nvim")
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee

vim.cmd [[ packadd vim-dadbod-completion ]]
vim.cmd [[ packadd cmp-buffer ]]
vim.cmd [[ packadd lspsaga.nvim ]]

-- Config for: lspsaga.nvim
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.lspsaga\frequire\0", "config", "lspsaga.nvim")
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b

vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd cmp-nvim-lua ]]
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14autopairs\17plugins.misc\frequire\0", "config", "nvim-autopairs")

vim.cmd [[ packadd cmp-calc ]]
vim.cmd [[ packadd lsp_signature.nvim ]]

-- Config for: lsp_signature.nvim
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14signature\17plugins.misc\frequire\0", "config", "lsp_signature.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
<<<<<<< HEAD
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CodeActionMenu lua require("packer.load")({'nvim-code-action-menu'}, { cmd = "CodeActionMenu", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
=======
<<<<<<< HEAD
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZMinimalist lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZMinimalist", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZAtaraxis lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZAtaraxis", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
=======
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
<<<<<<< HEAD
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TableModeEnable lua require("packer.load")({'vim-table-mode'}, { cmd = "TableModeEnable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file EasyAlign lua require("packer.load")({'vim-easy-align'}, { cmd = "EasyAlign", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
=======
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CodeActionMenu lua require("packer.load")({'nvim-code-action-menu'}, { cmd = "CodeActionMenu", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZFocus lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
<<<<<<< HEAD
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ProDoc lua require("packer.load")({'prodoc.nvim'}, { cmd = "ProDoc", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
=======
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZAtaraxis lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZAtaraxis", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZMinimalist lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZMinimalist", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
<<<<<<< HEAD
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZFocus lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerToggle lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
=======
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
<<<<<<< HEAD
vim.cmd [[au FileType tex ++once lua require("packer.load")({'ultisnips', 'vimtex', 'cmp-latex-symbols'}, { ft = "tex" }, _G.packer_plugins)]]
=======
<<<<<<< HEAD
vim.cmd [[au FileType lua ++once lua require("packer.load")({'cmp-nvim-lua'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType pandoc ++once lua require("packer.load")({'vim-pandoc-syntax', 'ultisnips', 'vim-pandoc', 'bullets.vim'}, { ft = "pandoc" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-pandoc-syntax', 'ultisnips', 'vim-pandoc', 'bullets.vim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType java ++once lua require("packer.load")({'ultisnips'}, { ft = "java" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex', 'ultisnips'}, { ft = "tex" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'which-key.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets', 'bullets.vim'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-treesitter', 'indent-blankline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/melaney/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], true)
vim.cmd [[source /home/melaney/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]]
time([[Sourcing ftdetect script at: /home/melaney/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], false)
time([[Sourcing ftdetect script at: /home/melaney/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /home/melaney/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /home/melaney/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
time([[Sourcing ftdetect script at: /home/melaney/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], true)
vim.cmd [[source /home/melaney/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]]
time([[Sourcing ftdetect script at: /home/melaney/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], false)
time([[Sourcing ftdetect script at: /home/melaney/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]], true)
vim.cmd [[source /home/melaney/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]]
time([[Sourcing ftdetect script at: /home/melaney/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]], false)
time([[Sourcing ftdetect script at: /home/melaney/.local/share/nvim/site/pack/packer/opt/vim-pandoc/ftdetect/pandoc.vim]], true)
vim.cmd [[source /home/melaney/.local/share/nvim/site/pack/packer/opt/vim-pandoc/ftdetect/pandoc.vim]]
time([[Sourcing ftdetect script at: /home/melaney/.local/share/nvim/site/pack/packer/opt/vim-pandoc/ftdetect/pandoc.vim]], false)
=======
>>>>>>> ff41904b923d8a22db3d6ea5e3ad9b5d2863d6ee
vim.cmd [[au FileType java ++once lua require("packer.load")({'ultisnips'}, { ft = "java" }, _G.packer_plugins)]]
vim.cmd [[au FileType snippets ++once lua require("packer.load")({'ultisnips'}, { ft = "snippets" }, _G.packer_plugins)]]
vim.cmd [[au FileType pandoc ++once lua require("packer.load")({'ultisnips', 'bullets.vim', 'vim-pandoc', 'vim-pandoc-syntax', 'vim-table-mode'}, { ft = "pandoc" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'ultisnips', 'bullets.vim', 'vim-pandoc', 'vim-pandoc-syntax', 'vim-table-mode'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'which-key.nvim', 'indent-blankline.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'wildfire.vim', 'Comment.nvim', 'nvim-treesitter', 'vim-surround'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'dashboard-nvim', 'vim-matchup'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]], true)
vim.cmd [[source /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]]
time([[Sourcing ftdetect script at: /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]], false)
time([[Sourcing ftdetect script at: /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], true)
vim.cmd [[source /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]]
time([[Sourcing ftdetect script at: /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], false)
time([[Sourcing ftdetect script at: /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
time([[Sourcing ftdetect script at: /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], true)
vim.cmd [[source /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]]
time([[Sourcing ftdetect script at: /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], false)
time([[Sourcing ftdetect script at: /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-pandoc/ftdetect/pandoc.vim]], true)
vim.cmd [[source /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-pandoc/ftdetect/pandoc.vim]]
time([[Sourcing ftdetect script at: /Users/melaneyzhu/.local/share/nvim/site/pack/packer/opt/vim-pandoc/ftdetect/pandoc.vim]], false)
>>>>>>> 29c8c6998f980850652998d044b1eb32a1aeff3b
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
