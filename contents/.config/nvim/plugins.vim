" ================================================================================
" =================================== PLUG IN ====================================
" ================================================================================
filetype on
filetype indent on 
filetype plugin on
filetype plugin indent on
call plug#begin('$HOME/.config/nvim/plugged')
    Plug 'nvim-lua/plenary.nvim'    " System - get luna to work

" ------------------------------ Appearance Plugs --------------------------------
    Plug 'mhinz/vim-startify', 	                " startpage
    Plug 'kyazdani42/nvim-tree.lua'             " file tree for nvim
    Plug 'maaslalani/nordbuddy'                 " nord color theme
    Plug 'joshdick/onedark.vim'	                " onedark color theme
    Plug 'junegunn/goyo.vim'                    " focus mode
    Plug 'plasticboy/vim-markdown'              " markdown syntax highlight
    Plug 'lewis6991/gitsigns.nvim'              " git color in NumLr
    Plug 'ellisonleao/glow.nvim'                " markdown preview window
    Plug 'nvim-telescope/telescope.nvim'        " pop up fzf
    Plug 'lukas-reineke/indent-blankline.nvim'  " indent line (nvim)
    Plug 'kyazdani42/nvim-web-devicons'         " nvim icons
    Plug 'liuchengxu/vista.vim'                 " tag view of file
    Plug 'SmiteshP/nvim-gps'                    " display function in statusline
    Plug 'vim-pandoc/vim-pandoc'	            " syntax library
    Plug 'vim-pandoc/vim-pandoc-syntax'         " markdown syntax
    Plug 'nvim-telescope/telescope-fzy-native.nvim' " with telescope
    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'} " nvim status line
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } " html color display
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " language support

" --------------------------------- Edit Plugs -----------------------------------
    "maybe
    "Plug 'neovim/nvim-lspconfig'               " LSP plugins
    "Plug 'glepnir/lspsaga.nvim'
    "Plug 'hrsh7th/nvim-compe'                  " LSP complete
    "Plug 'kabouzeid/nvim-lspinstall'
    "Plug 'folke/lsp-colors.nvim'
    Plug 'SirVer/ultisnips'
    Plug 'rhysd/accelerated-jk'                 " faster vertial movement
-
    Plug 'jiangmiao/auto-pairs'                 " auto pair
    Plug 'dkarter/bullets.vim'	                " makes bullet easier
    Plug 'preservim/nerdcommenter'              " easier comment
    Plug 'vim-pandoc/vim-rmarkdown'             " Rmarkdown render
    Plug 'dhruvasagar/vim-table-mode'	        " easier tables
	Plug 'lervag/vimtex'                    	" latex syntax support
    Plug 'hrsh7th/vim-eft'                      " easier horizontal jump

    Plug 'liuchengxu/vim-which-key'             " organize key mappings
    Plug 'voldikss/vim-floaterm'                " terminal in vim
    Plug 'michaelb/sniprun', {'do': 'bash install.sh'} " quick run code
    Plug 'neoclide/coc.nvim', {'branch': 'release'}	" auto complition
    

call plug#end()

