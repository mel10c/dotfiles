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
call plug#begin('$HOME/.config/nvim/plugged')

    Plug 'itchyny/lightline.vim'    " Apperance - vim status line
    Plug 'mhinz/vim-startify'	    " Appearance - startpage
    Plug 'ryanoasis/vim-devicons'   " Appearance - icons
    Plug 'arcticicestudio/nord-vim' " Appearance - nord color theme
    Plug 'joshdick/onedark.vim'	    " Appearance - onedark color theme
    Plug 'junegunn/goyo.vim'        " Appearance - focus mode
    "Plug 'RRethy/vim-illuminate'    " Appearance - highlight term under cursor
    Plug 'airblade/vim-gitgutter'   " Appearance - git change in sidebar
    Plug 'preservim/nerdtree'	    " Appearance - file tree for vim
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	" Appearance - file color
    Plug 'Xuyuanp/nerdtree-git-plugin'	" Appearance - file git icons
    Plug 'lukas-reineke/indent-blankline.nvim'  " Appearance - indent line for nvm

    Plug 'jiangmiao/auto-pairs'	    " Edit - auto pair
    Plug 'dkarter/bullets.vim'	    " Edit - makes bullet easier
    Plug 'preservim/nerdcommenter'  " Edit - easier comment
    Plug 'sirver/ultisnips'	        " Edit - text snippit
    Plug 'tpope/vim-surround'	    " Edit - syntax change
    Plug 'tpope/vim-fugitive'	    " Edit - git tool
    Plug 'vim-pandoc/vim-pandoc'	" Edit - syntax library
    Plug 'vim-pandoc/vim-pandoc-syntax'			  " Edit - syntax highlight
    "Plug 'lervag/vimtex', {'tag': 'v1.6'}    	  " Edit - latex syntax support
    Plug 'dhruvasagar/vim-table-mode'	" Edit - easier tables
    Plug 'neoclide/coc.nvim', {'branch': 'release'}	" Edit - auto complition

call plug#end()

" ================================================================================
" ============================== EDITOR BEHAVIOR =================================
" ================================================================================
set mouse=a
set autochdir
set syntax
set exrc
set secure
set number relativenumber cursorcolumn signcolumn=yes
set hidden
set expandtab smarttab tabstop=4 shiftwidth=4 softtabstop=4
set autoindent
set nolist
set scrolloff=10
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
set ttyfast "should make scrolling faster
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

set nocompatible
filetype on
filetype indent on 
filetype plugin on
filetype plugin indent on

"Theme
set background=dark
colorscheme nord
hi CursorLineNr guibg=#434c5e guifg=white
set t_Co=256
set termguicolors " enable true colors support
"set guifont=Hack_Nerd_Font_Mono:h14
set guifont=MesloLGS_NF:h14
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
"hi LineNr guibg=#61afef
set cursorline

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" ================================================================================
" -------------------------------- Basic Mappings --------------------------------
" ================================================================================
let mapleader=" "
noremap <leader>q :q<CR>
noremap <leader>w :w<CR>
noremap ,s :source ~/.vimrc<CR>
noremap <D-s> :w!<CR>
nnoremap Y y$
vnoremap Y "+y
"nnoremap ; /\(\<\w\+\>\)\_s*\l
"vnoremap ; /\(\<\w\+\>\)\_s*\l
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
" ------------------------------------ Nagivation --------------------------------
noremap W 5w
noremap B 5b
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
map <C-u> <C-u>zz
map <C-d> <C-d>zz
map <C-o> <C-o>zz

" ----------------------------- Screen Motion Remaps -----------------------------
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap Sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap Sj :set splitbelow<CR>:split<CR>
noremap Sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap Sl :set splitright<CR>:vsplit<CR>
map <leader>k <C-w>k
map <leader>j <C-w>j
map <leader>h <C-w>h
map <leader>l <C-w>l
map <leader>tk <C-w>t<C-W>K
map <leader>th <C-w>t<C-W>H

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
" Start terminals
"map <leader>tr :new term://bash<CR>iR<CR><C-\><C-n><C-w>k
map <leader>tp :term<CR>python3<CR>

" -------------------------------- Personal Snippits -----------------------------
let g:UltiSnipsSnippetDirectories=[$HOME.'/dotfiles/contents/.config/coc/ultisnips']


" ================================================================================
" =================================== CONFIGS ====================================
" ================================================================================

" Appearance Config
" --------------------------- itchyny/lightline.vim ------------------------------
" ================================================================================
set laststatus=2
set noshowmode

let g:lightline = {
\   'colorscheme': 'nord',
\   'active': {
\    'left' :[[ 'mode', 'paste' ], ['gitbranch', 'smarttabs'], [ 'filetype' ],
\     [ 'readonly', 'filename', 'modified' ]],
\    'right':[[ 'percent', 'lineinfo' ] ]
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
\     'fullname': 'LightlineFullname',
\     'mode': 'LightlineMode',
\     'gitbranch': 'LightlineGitbranch',
\     'readonly': 'LightlineReadonly',
\     'modified': 'LightlineModified',
\     'filetype': 'LightlineFiletype',
\   },
\   'component_expand': {
\     'buffers': 'lightline#bufferline#buffers',
\     'smarttabs': 'SmartTabsIndicator',
\     'trailing': ''
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
    if winwidth(0) < 60
        return ''
    endif

    let l:percent = line('.') * 100 / line('$') . '%'
    return printf('%-4s', l:percent)
endfunction

function! LightlineLineinfo() abort
    if winwidth(0) < 86
        return ''
    endif
    let l:word_count=wordcount().words
    if has_key(wordcount(),'visual_words')
        let l:word_count=wordcount().visual_words."/".wordcount().words " count selected words
    else
        let l:word_count=wordcount().words " or shows words 'so far'
    endif

    let l:current_line = printf('%-3s', line('.'))
    let l:max_line = printf('%-3s', line('$'))
    let l:lineinfo = '⍳:'  . l:max_line . '   ⍵:' . l:word_count
    return l:lineinfo
endfunction

function! LightlineFilename() abort
    let l:prefix = expand('%:p') =~? "fugitive://" ? '(fugitive) ' : ''
    let l:maxlen = winwidth(0) - winwidth(0) / 2
    let l:relative = expand('%:.')
    let l:tail = expand('%:t')
    let l:noname = 'No Name'

    if winwidth(0) < 50
        return ''
    endif

    if winwidth(0) < 86
        return l:tail ==# '' ? l:noname : l:prefix . s:trim(l:maxlen, l:tail)
    endif

    return l:relative ==# '' ? l:noname : l:prefix . s:trim(l:maxlen, l:relative)
endfunction

function! LightlineFullname() abort
    let l:relative = expand('%')

    return l:relative
endfunction

function! LightlineModified() abort
    return &modified ? '⚑' : ''
endfunction

function! LightlineMode() abort
    let ftmap = {
                \ 'fugitive': 'FUGITIVE',
                \ 'vista': 'OUTLINE'
                \ }
    return get(ftmap, &filetype, lightline#mode())
endfunction

function! LightlineReadonly() abort
    let ftmap = {
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
        return branch !=# '' ? ' '. s:trim(maxlen, branch) : ''
    endif
    return fugitive#head()
endfunction

function! LightlineFiletype() abort
    let l:icon = WebDevIconsGetFileTypeSymbol()
    ""return winwidth(0) > 86 ? (strlen(&filetype) ? &filetype . ' ' . l:icon : l:icon) : ''
    return winwidth(0) > 86 ? (l:icon) : ''
endfunction

function! String2()
    return ' BUFFERS'
endfunction

function! SmartTabsIndicator() abort
    let tabs = lightline#tab#tabnum(tabpagenr())
    let tab_total = tabpagenr('$')
    return tabpagenr('$') > 1 ? ('TABS  ' . tabs . '/' . tab_total) : ''
endfunction

" autoreload
command! LightlineReload call LightlineReload()

function! LightlineReload() abort
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction
" }}}

" ---------------------- ryanoasis/vim-devicons/nerdtree -------------------------
" ================================================================================
" set encoding=UTF-8
let NERDTreeIgnore = ['\~$','\.pyc$','\*NTUSER*','\*ntuser*','\NTUSER.DAT','\ntuser.ini']
let NERDTreeQuitOnOpen=1

" ---------------------- ryanoasis/vim-devicons/nerdtree -------------------------
" ================================================================================
nnoremap TT :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
set termguicolors " this variable must be enabled for colors to be applied properly
" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

" ---------------------------- RRethy/vim-illuminate -----------------------------
" ================================================================================
let g:Illuminate_highlightUnderCursor = 1

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
	  \ "",
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
"let g:startify_custom_footer = s:footer

let g:startify_lists = [
          \ { 'type': 'files',     'header': s:center(['Recent Files'])            },
          \ { 'type': 'dir',       'header': s:center([getcwd()]) },
          \ { 'type': 'sessions',  'header': s:center(['   Sessions'])       },
          \ ] 

let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 1
let g:startify_enable_special = 0
let g:startify_fortune_use_unicode = 1
let g:startify_relative_path = 1
let g:startify_files_number           = 10
let g:startify_session_persistence    = 1
let g:startify_padding_left = 20
map gs :Startify<CR>
map gv :e ~/.vimrc<CR>


" ----------------------------- preservim/nerdtree -------------------------------
" ================================================================================
" 
"nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap te :NERDTree<CR>
nnoremap tt :NERDTreeToggle<CR>
nnoremap tf :NERDTreeFind<CR>
nnoremap tu :NERDTree /Users/melaneyzhu/OneDrive\ -\ University\ of\ Toronto<CR>
nnoremap td :NERDTree /Users/melaneyzhu/melaneyroot.github.io<CR>
nnoremap tc :NERDTree /Users/melaneyzhu/<CR>
let NERDTreeIgnore = ['\.DAT$', '\.LOG1$', '\.LOG1$']

" For the sub-plug-in: Xuyuanp/nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


" Edit configs
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
let g:UltiSnipsExpandTrigger = '<Enter>'
let g:UltiSnipsJumpForwardTrigger = '<C-n>'
let g:UltiSnipsJumpBackwardTrigger = '<C-p>'

" ----------------- lervag/vimtex & KeitaNakamura/tex-conceal.vim ----------------
" ================================================================================
let g:tex_flavor='latex'
let g:vimtex_view_method='general'
let g:vimtex_quickfix_mode=0

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

