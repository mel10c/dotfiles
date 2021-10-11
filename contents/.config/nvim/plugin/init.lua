-- ===============================================================================
-- ================================= PLUGINS =====================================
-- ===============================================================================
require("plugins.misc").packer()

-- -------------------------------- Auto Load ------------------------------------
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()

-- --------------------------- Basic System Plugs---------------------------------
    -- lua plugin
    use 'nvim-lua/plenary.nvim'

    -- packer can manage itself
    use {
        'wbthomason/packer.nvim',
    }

    -- key map reminder
    use {
        "folke/which-key.nvim",
        event = "BufWinEnter",
        config = function() require('plugins.which-key') end,
    }

-- ------------------------------- Appearance ------------------------------------
    -- nerd icons
    use {
        "kyazdani42/nvim-web-devicons",
        config = function() require('plugins.icons') end,
    }

    -- better code color
    use {
        "nvim-treesitter/nvim-treesitter",
        branch = "0.5-compat",
        event = "BufRead",
        config = function() require('plugins.treesitter') end,
    }

   -- git stuff
    use {
        "lewis6991/gitsigns.nvim",
        config = function() require('plugins.gitsigns') end,
        setup = function()
            require("util").packer_lazy_load "gitsigns.nvim"
        end,
    }

    -- Good COLOR SCHEME!
    use {
        "EdenEast/nightfox.nvim",
        config = function() require('plugins.nightfox') end,
    }

    -- status line
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        config = function() require('plugins.statusline') end,
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
}


    -- file tree
    use {
        'kyazdani42/nvim-tree.lua',
        cmd = { "NvimTreeToggle", "NvimTreeFocus" },
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require('plugins.NvimTree') end,
    }

    -- file finder
    use {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        requires = {
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                run = "make",
            },
            {
                "nvim-telescope/telescope-media-files.nvim",
            },
            },
        config = function() require('plugins.telescope') end,
    }

    -- indent line
    use {
        'lukas-reineke/indent-blankline.nvim',
        event = "BufRead",
        config = function() require('plugins.misc').indent() end,
    }

    -- code outline
    use {
        'simrat39/symbols-outline.nvim',
        cmd = "SymbolsOutline",
    }

   -- markdown
    use {
        'vim-pandoc/vim-pandoc',
        ft = {"markdown", "pandoc"},
    }
   use {
        'vim-pandoc/vim-pandoc-syntax',
        requires = { 'vim-pandoc/vim-pandoc' },
        ft = {"markdown", "pandoc"}
    }

    -- preview 
    use {
        "norcalli/nvim-colorizer.lua",
        cmd = "Colorizer",
        config = function() require('plugins.misc').colorizer() end,
    }

    -- latex preview
    use {
        'lervag/vimtex',
        ft = 'tex',
    }

    -- tabline
    use {
        "akinsho/bufferline.nvim",
        after = "nvim-web-devicons",
        config = function() require('plugins.bufferline') end,
   }

    -- dashboard
    use {
        "glepnir/dashboard-nvim",
        config = function() require('plugins.dashboard') end,
    }

-- ---------------------------- Editing Tools ------------------------------------
    -- auto pair
   use {
        "windwp/nvim-autopairs",
        -- after = "nvim-cmp",
        event = "InsertEnter",
        config = function() require('plugins.misc').autopairs() end,
    }

    -- change surrand types
    -- TODO: add config to misc to check if plugin exist
    -- TODO: find a way to lazy load this
    use {
        "blackCauldron7/surround.nvim",
        config = function()
            require"surround".setup {mappings_style = "surround"}
        end
    }

    -- markdown bullets
    use {
        'dkarter/bullets.vim',
        ft = {"markdown", "pandoc"},
        event = "InsertEnter",
    }

    -- easy comment
    use {
        'numToStr/Comment.nvim',
        config = function() require('plugins.misc').comment() end
    }

    -- document genenrator
    use {
        "glepnir/prodoc.nvim",
        cmd = {"ProDoc", "ProComment"},
        -- config = function() require('plugins.misc').comment() end,
    }

    -- terminal(lspaga has it)
    -- use {
    --     "akinsho/toggleterm.nvim",
    --     cmd = "ToggleTerm"
    -- }

    -- match under cursor
    use {
        "andymass/vim-matchup",
        opt = true,
        setup = function()
            require("util").packer_lazy_load "vim-matchup"
        end,
    }
-- ------------------------------ Lsp configs ------------------------------------
    -- lsp config
    use {
        "neovim/nvim-lspconfig",
        config = function() require('plugins.lspconfig') end,
        requires = {'kabouzeid/nvim-lspinstall'},
        -- opt = true,
        setup = function()
            -- require("util").packer_lazy_load "nvim-lspconfig"
            -- reload the current file so lsp actually starts for it
            vim.defer_fn(function()
                vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
            end, 0)
        end,
    }

    -- lsp hints
    use {
        "ray-x/lsp_signature.nvim",
        after = "nvim-lspconfig",
        config = function() require('plugins.misc').signature() end,
    }

    -- preset sinppeets
    use {
        "rafamadriz/friendly-snippets",
        event = "InsertEnter",
    }


    -- completion engine
    use {
        "hrsh7th/nvim-cmp",
        module = "cmp",
        after = "friendly-snippets",
        config = function() require('plugins.cmp') end,
    }

    -- snips
    -- use {
    --     "L3MON4D3/LuaSnip",
    --     wants = "friendly-snippets",
    --     after = "nvim-cmp",
    --     config = function() require('plugins.misc').luasnip() end,
    -- }
    use {
        'SirVer/ultisnips',
        -- wants = "friendly-snippets",
        config = function ()
            vim.g.UltiSnipsRemoveSelectModeMappings = 0
        end,
        after = 'nvim-cmp'
    }

    use {
        'quangnguyen30192/cmp-nvim-ultisnips',
        after = 'ultisnips'
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
        module = "cmp_nvim_lsp",
        after = "nvim-lspconfig",
    }

    -- source for lua api
    use {
        "hrsh7th/cmp-nvim-lua",
        after = "nvim-lspconfig",
    }

    -- source for buffer words
    use {
         "hrsh7th/cmp-buffer",
        after = "cmp-nvim-lsp",
    }

    -- source for path
    use {
        "hrsh7th/cmp-path",
        after = "cmp-buffer",
    }
    -- complete calculation
    use {
        "hrsh7th/cmp-calc",
        after = "cmp-buffer",
    }

    use {
        'kristijanhusak/vim-dadbod-completion',
        after = "cmp-nvim-lsp",
    }

    use {
        'glepnir/lspsaga.nvim',
        after = "nvim-lspconfig",
        config = function() require('plugins.lspsaga') end,
    }


end)
