"
"                    ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"                    ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"                    ██║   ██║██║██╔████╔██║██████╔╝██║     
"                    ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                     ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                      ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"                                BY MELANEY ZHU
"                              mel10njyhc@gmail.com
"                               github.com/mel10c
"
"                               TABLE OF CONTENTS
"                   1. Plug-In ---------------------------- (~20)
"                   2. Plug-In Configurations ------------- (~80)
"                   3. Editor Behaviors ------------------- (~600)
"                   4. Mappings --------------------------- (~660)
"

" ================================================================================
" =================================== PLUG IN ====================================
" ================================================================================
" Some settings to make sure plug in work
set nocompatible
filetype on
filetype indent on 
filetype plugin on
filetype plugin indent on

call plug#begin('$HOME/.config/nvim/plugged')

    Plug 'nvim-lua/plenary.nvim'    " System - get luna to work

    Plug 'itchyny/lightline.vim'    " Appearance - vim status line
    Plug 'josa42/vim-lightline-coc' " Appearance - show coc status in status line
    Plug 'mhinz/vim-startify', 	    " Appearance - startpage
    Plug 'ryanoasis/vim-devicons'   " Appearance - icons
    Plug 'preservim/nerdtree'	    " Appearance - file tree for vim
    Plug 'kyazdani42/nvim-tree.lua' " Appearance - file tree for nvim
    Plug 'arcticicestudio/nord-vim' " Appearance - nord color theme
    Plug 'joshdick/onedark.vim'	    " Appearance - onedark color theme
    Plug 'junegunn/goyo.vim'        " Appearance - focus mode
    Plug 'RRethy/vim-illuminate'    " Appearance - highlight term under cursor
    Plug 'plasticboy/vim-markdown'  " Appearance - markdown syntax highlight
    Plug 'sheerun/vim-polyglot'	    " Appearance - language pack 
    Plug 'airblade/vim-gitgutter'   " Appearance - git change in sidebar
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
    "Plug 'tpope/vim-surround'	    " Edit - syntax change
    Plug 'tpope/vim-fugitive'	    " Edit - git tool
	Plug 'vim-pandoc/vim-pandoc'	" Edit - syntax library
    Plug 'vim-pandoc/vim-rmarkdown' " Edit - Rmarkdown render
    Plug 'KKPMW/vim-sendtowindow'   " Edit - send code to terminal
    "Plug 'iamcco/markdown-preview.nvim'		" Edit - markdown preview
    "Plug 'jalvesaq/Nvim-R'          " Edit - R-environment
	Plug 'vim-pandoc/vim-pandoc-syntax'			  " Edit - syntax highlight
	Plug 'lervag/vimtex', {'tag': 'v1.6'}    	  " Edit - latex syntax support
    Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'} " Edit - clean latex
    Plug 'dhruvasagar/vim-table-mode'	" Edit - easier tables
    Plug 'neoclide/coc.nvim', {'branch': 'release'}	" Edit - auto complition
    

call plug#end()

" ================================================================================
" =================================== CONFIGS ====================================
" ================================================================================

" Appearance Config
" --------------------------- itchyny/lightline.vim ------------------------------
" ================================================================================
set laststatus=2
set noshowmode
"\    'right':[['lineinfo' ],[ 'percent'],  [ 'coc_status'  ], [ 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok' ],]

let g:lightline = {
\   'colorscheme': 'wombat',
\   'active': {
\    'left' :[[ 'mode', 'paste' ], ['gitbranch', 'smarttabs'], [ 'filetype' ],
\     [ 'readonly', 'filename', 'modified' ]],
\    'right':[['lineinfo' ],[ 'percent'], [ 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok' ],]
\   },
\   'tabline': {
\     'left': [['explorer_pad'], ['buffers']],
\     'right': [['gitbranch', 'smarttabs']]
\   },
\   'separator': {
\     'left': '', 'right': ''
\   },
\   'subseparator': {
\     'left': '', 'right': ''
\   },
\   'component_raw': {
\     'buffers': 1
\   },
\   'component_function': {
\     'explorer_pad': 'lightline#explorer_pad#left_pad',
\     'percent': 'LightlinePercent',
\     'lineinfo': 'LightlineLineinfo',
\     'filename': 'LightlineFilename',
\     'mode': 'LightlineMode',
\     'gitbranch': 'LightlineGitbranch',
\     'readonly': 'LightlineReadonly',
\     'modified': 'LightlineModified',
\     'filetype': 'LightlineFiletype',
\     'cocstatus': 'LightlineCoc',
\   },
\   'component_expand': {
\     'buffers': 'lightline#bufferline#buffers',
\     'smarttabs': 'SmartTabsIndicator',
\     'trailing': 'lightline#trailing_whitespace#component'
\   },
\   'component_type': {
\     'buffers': 'tabsel',
\     'trailing': 'warning'
\   }
\}
function! s:trim(maxlen, str) abort
    let trimed = len(a:str) > a:maxlen ? a:str[0:a:maxlen] . '..' : a:str
    return trimed
endfunction

function! LightlinePercent() abort
    if winwidth(0) < 40
        return ''
    endif

    let l:percent = ' ' . line('.') * 100 / line('$') . '%'
    return printf('%4s', l:percent)
endfunction

function! LightlineLineinfo() abort
    if winwidth(0) < 80
        return ''
    endif
    let l:word_count=wordcount().words
    if has_key(wordcount(),'visual_words')
        let l:word_count=wordcount().visual_words."/".wordcount().words " count selected words
    else
        "let l:word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
        let l:word_count=wordcount().words " or shows words 'so far'
    endif

    let l:current_line = printf('%-3s', line('.'))
    let l:max_line = printf('%-3s', line('$'))
    "let l:lineinfo = '⍳:' . l:current_line . '/' . l:max_line . '   ⍵:' . l:word_count
    let l:lineinfo = '⍳:' . l:max_line . ' ⍵:' . l:word_count
    return l:lineinfo
endfunction

function! LightlineFilename() abort
    let root = fnamemodify(get(b:, 'git_dir'), ':h')
    let path = expand('%:p')
    if path[:len(root)-1] ==# root
        let l:path = path[len(root)+1:]
    endif

    let l:relative = l:path . expand('%')
    let l:prefix = expand('%:p') =~? "fugitive://" ? '(fugitive) ' : ''
    let l:maxlen = winwidth(0) - winwidth(0) / 2
    let l:tail = expand('%:t')
    let l:noname = 'No Name'

    if winwidth(0) < 40
        return ''
    endif

    if winwidth(0) < 100
        "return l:tail ==# '' ? l:noname : l:prefix . s:trim(l:maxlen, l:tail)
        return l:tail ==# '' ? l:noname : l:prefix . s:trim(l:maxlen, l:tail)
    endif

    return l:relative ==# '' ? l:noname : l:prefix . s:trim(l:maxlen, l:relative)
endfunction


function! LightlineModified() abort
    return &modified ? '⚑' : ''
endfunction

function! LightlineMode() abort
    let ftmap = {
                \ 'coc-explorer': 'EXPLORER',
                \ 'fugitive': 'FUGITIVE',
                \ 'vista': 'OUTLINE'
                \ }
    return get(ftmap, &filetype, lightline#mode())
endfunction

function! LightlineReadonly() abort
    let ftmap = {
                \ 'coc-explorer': '',
                \ 'fugitive': '',
                \ 'vista': ''
                \ }
    let l:char = get(ftmap, &filetype, '')
    return &readonly ? l:char : ''
endfunction

function! LightlineGitbranch() abort
    if exists('*fugitive#head')
        let maxlen = 20
        let branch = fugitive#head()
    if winwidth(0) < 100
        return branch !=# '' ? '': ''
    endif
        return branch !=# '' ? ' '. s:trim(maxlen, branch) : ''
    endif
    return fugitive#head()
endfunction

function! LightlineFiletype() abort
    let l:icon = WebDevIconsGetFileTypeSymbol()
    if winwidth(0) < 100
    return winwidth(0) > 50 ? (l:icon) : ''
    endif 
    return (strlen(&filetype) ? &filetype . ' ' . l:icon : l:icon)
endfunction

function! String2()
    return 'BUFFERS'
endfunction

function! SmartTabsIndicator() abort
    let tabs = lightline#tab#tabnum(tabpagenr())
    let tab_total = tabpagenr('$')
    return tabpagenr('$') > 1 ? ('TABS ' . tabs . '/' . tab_total) : ''
endfunction

" autoreload
command! LightlineReload call LightlineReload()

function! LightlineReload() abort
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle
let g:lightline#trailing_whitespace#indicator = ''

" ------------------------ josa42/vim-lightline-coc ------------------------------
call lightline#coc#register()

function! s:trim(maxlen, str) abort
    let trimed = len(a:str) > a:maxlen ? a:str[0:a:maxlen] . '..' : a:str
    return trimed
endfunction

function! LightlineCoc() abort
    "if winwidth(0) < 60
        "return ''
    "endif

    "return coc#status()
"endfunction
"function! LightLineCoc()
  if empty(get(g:, 'coc_status', '')) && empty(get(b:, 'coc_diagnostic_info', {}))
    return ''
  endif
  return trim(coc#status())
endfunction


" ----------------------------- mhinz/vim-startify  ------------------------------
" ================================================================================
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

function! s:truncate_filename(fname)
  let fname = fnamemodify(a:fname, ':~:p')
  let maxchars = winwidth(0) - (g:startify_padding_left * 2 + 6)
  if strdisplaywidth(fname) - 1 > maxchars
    while strdisplaywidth(fname) > maxchars
      let fname = substitute(fname, '.$', '', '')
    endwhile
    let fname = fname . '>'
  endif
  return fname
endfunction

let g:startify_transformations = [
  \ ['.*', function('s:truncate_filename')],
  \ ]

let s:header = [
      \ '',
      \ '',
  	  \ '╻ ╻   ╻   ┏┳┓',
  	  \ '┃┏┛   ┃   ┃┃┃',
  	  \ '┗┛    ╹   ╹ ╹',
  	  \ '',
      \ ' [ MELANEY ]',
      \ '',
      \ ]

let s:footer = [
      \ '',
      \ ]

let g:startify_custom_header = s:center(s:header)
let g:startify_custom_footer = s:center(s:footer)
"let g:startify_custom_header = s:header
"let g:startify_custom_f0ooter = s:footer

let g:startify_lists = [
          \ { 'type': 'files',     'header': s:center(['Recent Files'])            },
          \ { 'type': 'dir',       'header': s:center([''. getcwd()]) },
          \ { 'type': 'sessions',  'header': s:center(['Sessions'])       },
          \ ] 

let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 1
let g:startify_enable_special = 0
let g:startify_fortune_use_unicode = 1
let g:startify_relative_path = 1
let g:startify_files_number           = 10
let g:startify_session_persistence    = 2
let g:startify_padding_left = 20
map gs :Startify<CR>

" -------------------------- 'kyazdani42/nvim-tree.lua' --------------------------
" ================================================================================
let g:nvim_tree_width = 30
let g:nvim_tree_quit_on_open = 1 
let g:nvim_tree_follow_update_path = 0
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 1
nnoremap tt :NvimTreeToggle<CR>
nnoremap tf :NvimTreeFindFile<CR>
highlight NvimTreeFolderIcon guibg=blue
let g:nvim_tree_show_icons = {
	\ 'git': 1,
	\ 'folders': 1,
	\ 'files': 1,
  \ 'folder_arrows': 1,
	\}
let g:nvim_tree_icons = {
      \ 'default':        '',
      \ 'symlink':        '',
      \ 'git': {
      \   'unstaged':     "✗",
      \   'staged':       "✓",
      \   'unmerged':     "",
      \   'renamed':      "➜",
      \   'untracked':    "★",
      \   'deleted':      "",
      \  },
      \ 'folder': {
      \   'arrow_open':   "",
      \   'arrow_closed': "",
      \   'default':      "",
      \   'open':         "",
      \   'empty':        "",
      \   'empty_open':   "",
      \   'symlink':      "",
      \   'symlink_open': "",
      \  },
      \  'lsp': {
      \    'hint': "",
      \    'info': "",
      \    'warning': "",
      \    'error': "",
      \  }
      \ }


" ---------------------------- RRethy/vim-illuminate -----------------------------
" ================================================================================
"let g:Illuminate_highlightUnderCursor = 1
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedCurWord cterm=italic gui=italic
augroup END

" ------------ nvim-lua/plenary.nvim & nvim-telescope/telescope.nvim -------------
" ================================================================================
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" ---------------------- nvim-treesitter/nvim-treesitter -------------------------
" ================================================================================
"require'nvim-treesitter.configs'.setup {
  "ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  "highlight = {
    "enable = true,              -- false will disable the whole extension
  "},
"}





" Edit configs
" ----------------------------- 'preservim/tagbar' -------------------------------
" ================================================================================
nmap tb :TagbarToggle<CR>


" ----------------------------- dkarter/bullets.vim ------------------------------
" ================================================================================
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]
"let g:bullets_set_mappings = 0 " default = 1
let g:bullets_outline_levels = [ 'ROM', 'rom', 'ABC', 'abc', 'num', 'std-', 'std*', 'std+' ]
inoremap <C-r> <C-o>:BulletPromote<cr>
"inoremap <C-t> <C-o>:BulletPromote<cr> default

" -------------------------- preservim/nerdcommenter -----------------------------
" ================================================================================
map ++ <plug>NERDCommenterToggle
if has("gui_running")
    map <D-/> <plug>NERDCommenterToggle
endif

" ------------------------------ sirver/ultisnips --------------------------------
" ================================================================================
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

" ----------------- lervag/vimtex & KeitaNakamura/tex-conceal.vim ----------------
" ================================================================================
let &runtimepath  = '~/.config/nvim/plugged/vimtex,' . &runtimepath
let &runtimepath .= ',~/.config/nvim/plugged/vimtex/after'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_progname='nvr'
let g:vimtex_quickfix_latexlog = {'fix_paths':0}

set conceallevel=2
let g:tex_conceal="abdgm"

" --------------------------- dhruvasagar/vim-table-mode -------------------------
" ================================================================================
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'


" ------------------------------ neoclide/coc.nvim -------------------------------
" ================================================================================
set encoding=utf-8
set hidden
set cmdheight=2
set updatetime=100
set shortmess+=c
set signcolumn=number
"set signcolumn=yes

nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>+ <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent><nowait> <space>d  :<C-u>CocList diagnostics<cr>
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

let g:coc_global_extensions = [ 
            \ 'coc-json', 
            \ 'coc-vimlsp', 
            \ 'coc-texlab', 
            \ 'coc-translator',
            \ 'coc-r-lsp',
            \ 'coc-snippets',
            \ 'coc-java']

" ================================================================================
" ============================== EDITOR BEHAVIOR =================================
" ================================================================================
set mouse=a
set autochdir
set syntax
set exrc
set secure
set number
set relativenumber
set cursorcolumn
set hidden
set expandtab
set smarttab
set tabstop=4 shiftwidth=4 softtabstop=4
set autoindent
set list
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set wrap
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set visualbell
"set colorcolumn=100
set updatetime=100
set nohlsearch
set incsearch
set guioptions=
set nofoldenable
setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"Theme
"colorscheme onedark
colorscheme nord
hi LineNr guifg=#4c566a
set background=dark
set t_Co=256
set termguicolors " enable true colors support
set guifont=Hack_Nerd_Font_Mono:h14
set cursorline
map <leader>0 <Cmd>colorscheme onedark<CR>
map <leader>9 <Cmd>colorscheme nord<CR>

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
hi CursorLineNr guibg=#4c566a guifg=white

" ================================================================================
" -------------------------------- Basic Mappings --------------------------------
" ================================================================================
let mapleader=" "
noremap <leader>q :q<CR>
noremap <leader>w :w<CR>
map <C-S> :w!<CR>
noremap <leader>s :source ~/.config/nvim/init.vim<CR>
noremap <D-s> :w!<CR>
nnoremap Y y$
vnoremap Y "+y
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> H 0
noremap <silent> L $
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap $ $<C-g>u
inoremap { }<C-g>u
inoremap } }<C-g>u
inoremap \ \<C-g>u
" -------------------------- Insert Mode Emacs-style mapping ---------------------
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-d> <ESC>ls
map ; %
map > ;
map < ,
" ------------------------------------ Nagivation --------------------------------
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap G Gzz
nnoremap { {zz
nnoremap } }zz
map <C-u> <C-u>zz
map <C-d> <C-d>zz
map <C-o> <C-o>z<CR>

" ----------------------------- Screen Motion Remaps -----------------------------
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap Sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap Sj :set splitbelow<CR>:split<CR>
noremap Sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap Sl :set splitright<CR>:vsplit<CR>
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l
map <LEADER>tk <C-w>t<C-W>K
map <LEADER>th <C-w>t<C-W>H

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
" Start terminals
"map <leader>tr :new term://bash<CR>iR<CR><C-\><C-n><C-w>k
map <leader>tp :term<CR>python3<CR>

" -------------------------------- Personal Snippits -----------------------------
source /home/melaney/dotfiles/_snippts.vim
map gv :e ~/.config/nvim/init.vim<CR>
