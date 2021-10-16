-- ===============================================================================pc:me
-- ================================= PLUGINS =====================================
-- ===============================================================================
require("plugins.misc").packer()
require('util').disable()

-- -------------------------------- Auto Load ------------------------------------
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

-- --------------------------- Basic System Plugs---------------------------------
    -- lua plugin
    use {
        'nvim-lua/plenary.nvim',
        event = 'BufEnter'
    }

    -- packer can manage itself
    use {
        'wbthomason/packer.nvim',
    }

    -- key map reminder
    use {
        "folke/which-key.nvim",
        config = function() require('plugins.which-key') end,
        event = "BufWinEnter",
    }

    -- better code color
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ':TSUpdate',
        branch = "0.5-compat",
        config = function() require('plugins.treesitter') end,
        event = "BufRead",
    }

-- ------------------------------- Appearance ------------------------------------
    -- Good COLOR SCHEME!
    use {
        "EdenEast/nightfox.nvim",
        disable = false,
        config = function() require('plugins.nightfox') end,
    }

    -- alternative colors
    use {
        'sainnhe/everforest',
        disable = true
    }

    -- alternative colors
    use {
        'RRethy/nvim-base16',
        disable = true,
    }

    -- nerd icons
    use {
        "kyazdani42/nvim-web-devicons",
        -- after = "nightfox",
        config = function() require('plugins.icons') end,
    }

    -- status line
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons',},
        config = function() require('plugins.statusline') end,
        after = "nvim-web-devicons"
    }

   -- git stuff
    use {
        "lewis6991/gitsigns.nvim",
        config = function() require('plugins.gitsigns') end,
        -- setup = function()
        --     require("util").packer_lazy_load "gitsigns.nvim"
        -- end,
    }

    -- file tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require('plugins.NvimTree') end,
        cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    }

    -- file finder
    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            {
                -- telescope order
                "nvim-telescope/telescope-fzf-native.nvim",
                run = "make",
            },
            {
                -- pictures (?)
                "nvim-telescope/telescope-media-files.nvim",
            },
            {
                -- view ultisnips
                "fhill2/telescope-ultisnips.nvim",
            }
            },
        config = function() require('plugins.telescope') end,
        cmd = "Telescope",
    }

    -- indent line
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function() require('plugins.misc').indent() end,
        event = "BufWinEnter",
    }

    -- code outline
    use {
        'simrat39/symbols-outline.nvim',
        cmd = "SymbolsOutline",
    }

   -- markdown rewquirement
    use {
        'vim-pandoc/vim-pandoc',
        ft = {"markdown", "pandoc"},
    }
    -- mardown highlight
   use {
        'vim-pandoc/vim-pandoc-syntax',
        requires = { 'vim-pandoc/vim-pandoc' },
        ft = {"markdown", "pandoc"}
    }

    -- preview colors
    use {
        "norcalli/nvim-colorizer.lua",
        config = function() require('plugins.misc').colorizer() end,
        cmd = "ColorizerToggle",
    }

    -- latex preview
    use {
        'lervag/vimtex',
        ft = 'tex',
        -- config = function () require('plugins.misc').vimtex() end
    }

    -- tabline
    use {
        "akinsho/bufferline.nvim",
        config = function() require('plugins.bufferline') end,
        after = "nvim-web-devicons",
   }

    -- dashboard
    use {
        "glepnir/dashboard-nvim",
        config = function() require('plugins.dashboard') end,
        disable = false,
        -- event = "BufWinEnter",
        event = "BufEnter",
    }

-- ---------------------------- Editing Tools ------------------------------------
    -- auto pair
   use {
        "windwp/nvim-autopairs",
        config = function() require('plugins.misc').autopairs() end,
        after = "nvim-cmp"
    }

    -- change surrand types
    use {
        -- "blackCauldron7/surround.nvim",
        -- config = function()
        --     require"surround".setup {mappings_style = "surround"}
        -- end
        "tpope/vim-surround",
        event = "BufRead",
    }

    -- zen mode
    use {
        "Pocco81/TrueZen.nvim",
        cmd = {'TZMinimalist', 'TZFocus', 'TZAtaraxis' }
    }

    -- markdown bullets
    use {
        'dkarter/bullets.vim',
        ft = {"markdown", "pandoc"},
        -- event = "InsertEnter",
    }

    -- easy comment
    use {
        'numToStr/Comment.nvim',
        config = function() require('plugins.misc').comment() end,
        event = "BufRead",
    }

    -- terminal
    -- use {
    --     "akinsho/toggleterm.nvim",
    --     cmd = "ToggleTerm"
    -- }

    -- match under cursor
    use {
        "andymass/vim-matchup",
        setup = function()
            require("util").packer_lazy_load "vim-matchup"
        end,
        -- event = "BufRead",
        event = "BufEnter",
    }

    -- easy selection
    use {
        'gcmt/wildfire.vim',
        event = "BufRead",
    }
-- ------------------------------ Lsp configs ------------------------------------
    -- lsp config
    use {
        "neovim/nvim-lspconfig",
        requires = {'kabouzeid/nvim-lspinstall'},
        config = function() require('plugins.lspconfig') end,
        setup = function()
            require("util").packer_lazy_load "nvim-lspconfig"
            -- reload the current file so lsp actually starts for it
            vim.defer_fn(function()
                vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
            end, 0)
        end,
    }

    -- lsp hints
    use {
        "ray-x/lsp_signature.nvim",
        config = function() require('plugins.misc').signature() end,
        after = "nvim-lspconfig",
    }

    -- preset sinppeets
    -- use {
    --     "rafamadriz/friendly-snippets",
    --     event = "InsertEnter",
    -- }

    -- completion engine
    use {
        "hrsh7th/nvim-cmp",
        -- module = "cmp",
        -- requires = {'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-nvim-lua',
        --             'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path',
        --             'hrsh7th/cmp-calc',
        --             'kristijanhusak/vim-dadbod-completion',},
        config = function() require('plugins.cmp') end,
        event = "InsertEnter",
    }

    -- snips
    -- use {
    --     "L3MON4D3/LuaSnip",
    --     wants = "friendly-snippets",
    --     after = "nvim-cmp",
    --     config = function() require('plugins.misc').luasnip() end,
    -- }

    -- snippets
    use {
        'SirVer/ultisnips',
        config = function ()
            vim.g.UltiSnipsRemoveSelectModeMappings = 0
        end,
        -- wants = "friendly-snippets",
        ft = {'tex', 'java', 'pandoc', 'markdown'},
        -- event = "InsertEnter",
    }

    -- completion for snippets
    use {
        'quangnguyen30192/cmp-nvim-ultisnips',
        after = 'ultisnips',
    }

    -- luasnip completetion
    -- use {
    --     "saadparwaiz1/cmp_luasnip",
    --     after = "LuaSnip",
    -- }

    -- soruce for build-in lsp clients
    use {
        "hrsh7th/cmp-nvim-lsp",
        -- disable = not status.cmp,
        -- after = "nvim-lspinstall",
    }
    
    -- source for lua api
    use {
        "hrsh7th/cmp-nvim-lua",
        -- ft = "lua",
        after = "nvim-cmp",
    }

    -- source for buffer words
    use {
         "hrsh7th/cmp-buffer",
        after = "nvim-cmp",
    }
    
    -- source for path
    use {
        "hrsh7th/cmp-path",
        after = "nvim-cmp",
    }
    -- complete calculation
    use {
        "hrsh7th/cmp-calc",
        after = "nvim-cmp",
    }

    -- dot completion
    use {
        'kristijanhusak/vim-dadbod-completion',
        after = "nvim-cmp",
    }

    -- pretty rename and other lsp functions
    -- TODO: may get define own function to replace this
    use {
        'glepnir/lspsaga.nvim',
        config = function() require('plugins.lspsaga') end,
        after = "nvim-lspconfig",
    }

    -- good code action menu
    use {
        'weilbith/nvim-code-action-menu',
        cmd = 'CodeActionMenu',
    }

    -- good bug display
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require('plugins.misc').trouble() end,
        cmd = "TroubleToggle"
    }

    -- use {
    --     'mfussenegger/nvim-jdtls',
    -- }

end)
