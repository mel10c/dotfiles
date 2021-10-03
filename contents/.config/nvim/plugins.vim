" ================================================================================
" =================================== PLUG IN ====================================
" ================================================================================
"
" ----------------------------- Auto Install Plugs -------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

filetype on
filetype indent on 
filetype plugin on
filetype plugin indent on


call plug#begin('$HOME/.config/nvim/plugged')
    Plug 'nvim-lua/plenary.nvim'    " System - get luna to work

" ------------------------------ Appearance Plugs --------------------------------
    "Plug 'shaunsingh/nord.nvim' 
    Plug 'joshdick/onedark.vim'	                " onedark color theme
    Plug 'EdenEast/nightfox.nvim'               " vibrant nord theme

    Plug 'mhinz/vim-startify', 	                " startpage
    Plug 'kyazdani42/nvim-tree.lua'             " file tree for nvim
    Plug 'junegunn/goyo.vim'                    " focus mode
    Plug 'lewis6991/gitsigns.nvim'              " git color in NumLr
    Plug 'ellisonleao/glow.nvim'                " markdown preview window
    Plug 'nvim-telescope/telescope.nvim'        " pop up fzf
    Plug 'lukas-reineke/indent-blankline.nvim'  " indent line (nvim)
    Plug 'kyazdani42/nvim-web-devicons'         " nvim icons
    Plug 'liuchengxu/vista.vim'                 " tag view of file
    Plug 'vim-pandoc/vim-pandoc'	            " file converts
    Plug 'vim-pandoc/vim-pandoc-syntax'         " markdown syntax
    Plug 'mfussenegger/nvim-jdtls'
    Plug 'rmagatti/goto-preview'
    Plug 'nvim-telescope/telescope-fzy-native.nvim' " telescope sort extension
    Plug 'fannheyward/telescope-coc.nvim'       " telescope coc extension
    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'} " nvim status line
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } " html color display
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " language support

" --------------------------------- Edit Plugs -----------------------------------
    "maybe
    Plug 'neovim/nvim-lspconfig'               " LSP plugins
    " Plug 'glepnir/lspsaga.nvim'
    " Plug 'hrsh7th/nvim-compe'                  " LSP complete
    Plug 'kabouzeid/nvim-lspinstall'
    " Plug 'folke/lsp-colors.nvim'

    Plug 'SirVer/ultisnips'                     " snips
    Plug 'rhysd/accelerated-jk'                 " faster vertial movement
-
    Plug 'jiangmiao/auto-pairs'                 " auto pair
    Plug 'tpope/vim-surround'                   " easy change brackets
    Plug 'dkarter/bullets.vim'	                " makes bullet easier
    "Plug 'preservim/nerdcommenter'              " easier comment
    Plug 'b3nj5m1n/kommentary'
    Plug 'vim-pandoc/vim-rmarkdown'             " Rmarkdown render
    Plug 'dhruvasagar/vim-table-mode'	        " easier tables
	Plug 'lervag/vimtex'                    	" latex syntax support

    Plug 'liuchengxu/vim-which-key'             " organize key mappings
    Plug 'voldikss/vim-floaterm'                " terminal in vim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}	" auto complition
    

call plug#end()
