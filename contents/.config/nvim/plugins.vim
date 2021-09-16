" All plugins in nvim
call plug#begin('$HOME/.config/nvim/plugged')

    Plug 'nvim-lua/plenary.nvim'    " System - get luna to work

    Plug 'itchyny/lightline.vim'    " Appearance - vim status line
    Plug 'josa42/vim-lightline-coc' " Appearance - show coc status in status line
    Plug 'mhinz/vim-startify', 	    " Appearance - startpage
    Plug 'ryanoasis/vim-devicons'   " Appearance - icons
    Plug 'kyazdani42/nvim-tree.lua' " Appearance - file tree for nvim
    Plug 'arcticicestudio/nord-vim' " Appearance - nord color theme
    Plug 'joshdick/onedark.vim'	    " Appearance - onedark color theme
    Plug 'junegunn/goyo.vim'        " Appearance - focus mode
    Plug 'RRethy/vim-illuminate'    " Appearance - highlight term under cursor
    Plug 'plasticboy/vim-markdown'  " Appearance - markdown syntax highlight
    Plug 'sheerun/vim-polyglot'	    " Appearance - language pack 
    Plug 'airblade/vim-gitgutter'   " Appearance - git change in sidebar
    Plug 'ellisonleao/glow.nvim'    " Appearance - markdown preview window
    Plug 'Xuyuanp/nerdtree-git-plugin'	" Appearance - file git icons
    Plug 'nvim-telescope/telescope.nvim'    " Appearance - pop up fzf
    Plug 'nvim-telescope/telescope-fzy-native.nvim' " Appearance - with telescope
    Plug 'lukas-reineke/indent-blankline.nvim'  " Appearance - indent line (nvim)
    Plug 'kyazdani42/nvim-web-devicons'         " Appearance - nvim icons
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }  "Applearnace - inline html color display
    Plug 'nvim-treesitter/nvim-treesitter' " Applearnace - highlighting

    Plug 'preservim/tagbar'         " Edit - variables at side
    Plug 'jiangmiao/auto-pairs'     " Edit - auto pair
    Plug 'dkarter/bullets.vim'	    " Edit - makes bullet easier
    Plug 'preservim/nerdcommenter'  " Edit - easier comment
    Plug 'sirver/ultisnips'	        " Edit - text snippit
    Plug 'tpope/vim-fugitive'	    " Edit - git tool
    Plug 'vim-pandoc/vim-pandoc'	" Edit - syntax library
    Plug 'vim-pandoc/vim-rmarkdown' " Edit - Rmarkdown render
    Plug 'KKPMW/vim-sendtowindow'   " Edit - send code to terminal
    Plug 'iamcco/markdown-preview.nvim'		" Edit - markdown preview
    Plug 'jalvesaq/Nvim-R'          " Edit - R-environment
	Plug 'vim-pandoc/vim-pandoc-syntax'			  " Edit - syntax highlight
	Plug 'lervag/vimtex', {'tag': 'v1.6'}    	  " Edit - latex syntax support
    Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'} " Edit - clean latex
    Plug 'dhruvasagar/vim-table-mode'	" Edit - easier tables
    Plug 'neoclide/coc.nvim', {'branch': 'release'}	" Edit - auto complition
    
    "Plug 'neovim/nvim-lspconfig'    " Edit - LSP plugins
    "Plug 'hrsh7th/nvim-compe'       " Edit - LSP complete
    "Plug 'ray-x/lsp_signature.nvim' " Edit - LSP signature
    "Plug 'onsails/lspkind-nvim'

call plug#end()

