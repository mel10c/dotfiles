" All plugins in nvim
call plug#begin('$HOME/.config/nvim/plugged')

    Plug 'nvim-lua/plenary.nvim'    " System - get luna to work

" ------------------------------ Appearance Plugs --------------------------------
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
    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'} " nvim status line
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }  " inline html color display
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " better language support


    Plug 'preservim/tagbar'         " Edit - variables at side
    Plug 'jiangmiao/auto-pairs'     " Edit - auto pair
    Plug 'dkarter/bullets.vim'	    " Edit - makes bullet easier
    Plug 'preservim/nerdcommenter'  " Edit - easier comment
    Plug 'sirver/ultisnips'	        " Edit - text snippit
    Plug 'tpope/vim-fugitive'	    " Edit - git tool
    Plug 'vim-pandoc/vim-pandoc'	" Edit - syntax library
    Plug 'vim-pandoc/vim-rmarkdown' " Edit - Rmarkdown render
    Plug 'KKPMW/vim-sendtowindow'   " Edit - send code to terminal
    Plug 'jalvesaq/Nvim-R'          " Edit - R-environment
    Plug 'dhruvasagar/vim-table-mode'	" Edit - easier tables
    Plug 'iamcco/markdown-preview.nvim'		" Edit - markdown preview
	Plug 'vim-pandoc/vim-pandoc-syntax'			  " Edit - syntax highlight
	Plug 'lervag/vimtex', {'tag': 'v1.6'}    	  " Edit - latex syntax support
    Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'} " Edit - clean latex
    Plug 'neoclide/coc.nvim', {'branch': 'release'}	" Edit - auto complition
    
    "Plug 'neovim/nvim-lspconfig'    " Edit - LSP plugins
    "Plug 'hrsh7th/nvim-compe'       " Edit - LSP complete
    "Plug 'ray-x/lsp_signature.nvim' " Edit - LSP signature
    "Plug 'onsails/lspkind-nvim'

call plug#end()

