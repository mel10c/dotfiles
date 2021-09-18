" ================================================================================
" =================================== PLUG IN ====================================
" ================================================================================

call plug#begin('$HOME/.config/nvim/plugged')

    Plug 'nvim-lua/plenary.nvim'    " System - get luna to work

" ------------------------------ Appearance Plugs --------------------------------
" ================================================================================
    Plug 'mhinz/vim-startify', 	                " startpage
    Plug 'kyazdani42/nvim-tree.lua'             " file tree for nvim
    Plug 'arcticicestudio/nord-vim'             " nord color theme
    Plug 'joshdick/onedark.vim'	                " onedark color theme
    Plug 'sainnhe/sonokai'                      " treesitter theme
    Plug 'junegunn/goyo.vim'                    " focus mode
    Plug 'plasticboy/vim-markdown'              " markdown syntax highlight
    Plug 'sheerun/vim-polyglot'	                " language pack 
    Plug 'lewis6991/gitsigns.nvim'              " git color in NumLr
    Plug 'ellisonleao/glow.nvim'                " markdown preview window
    Plug 'nvim-telescope/telescope.nvim'        " pop up fzf
    Plug 'lukas-reineke/indent-blankline.nvim'  " indent line (nvim)
    Plug 'kyazdani42/nvim-web-devicons'         " nvim icons
    Plug 'nvim-telescope/telescope-fzy-native.nvim' " with telescope
    Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'} " clean latex
    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'} " nvim status line
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } " html color display
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " language support

" ------------------------------ Appearance Plugs --------------------------------
" ================================================================================
    "maybe
    Plug 'preservim/tagbar'                     " variables at side
    "Plug 'neovim/nvim-lspconfig'               " LSP plugins
    "Plug 'hrsh7th/nvim-compe'                  " LSP complete
    "Plug 'ray-x/lsp_signature.nvim'            " LSP signature
    "Plug 'onsails/lspkind-nvim'

    Plug 'jiangmiao/auto-pairs'                 " auto pair
    Plug 'dkarter/bullets.vim'	                " makes bullet easier
    Plug 'preservim/nerdcommenter'              " easier comment
    Plug 'tpope/vim-fugitive'	                " git tool
    Plug 'vim-pandoc/vim-pandoc'	            " syntax library
    Plug 'vim-pandoc/vim-rmarkdown'             " Rmarkdown render
    Plug 'KKPMW/vim-sendtowindow'               " send code to terminal
    Plug 'jalvesaq/Nvim-R'                      " R-environment
    Plug 'dhruvasagar/vim-table-mode'	        " easier tables
	Plug 'lervag/vimtex', {'tag': 'v1.6'}    	" latex syntax support
    Plug 'liuchengxu/vim-which-key'             " organize key mappings
    Plug 'voldikss/vim-floaterm'                " terminal in vim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}	" auto complition
    

call plug#end()

