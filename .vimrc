
"                    __  ____   ____     ________  __ ____   ____
"                   |  \/  \ \ / /| \   / /_ _|  \/  |  _ \ / ___|
"                   | |\/| |\ V /  \ \ / / | || |\/| | |_) | |
"                   | |  | | | |    \ V /  | || |  | |  _ <| |___
"                   |_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____|
" 
"                               BY MELANEY ZHU
"                            mel10njyhc@gmail.com
" 
"                               TABLE OF CONTENTS
"                   1. Plug-In ---------------------------- (~20)
"                   2. Plug-IN Congfigerations ------------ (~60)
"                   3. Editor Behaviors ------------------- (~560)
"                   4. Basic Mappings --------------------- (~620)




" ================================================================================
" =================================== PLUG IN ====================================
" ================================================================================

filetype plugin on
call plug#begin('$HOME/.config/nvim/plugged')

    Plug 'itchyny/lightline.vim'    " Apperance - vim status line
    Plug 'arcticicestudio/nord-vim' " Appearance - nord color theme
    Plug 'joshdick/onedark.vim'	    " Appearance - onedark color theme
    Plug 'ryanoasis/vim-devicons'   " Appearance - icons
    Plug 'RRethy/vim-illuminate'    " Appearance - highlight term under cursor
    Plug 'plasticboy/vim-markdown'  " Appearance - markdown syntax highlight
    Plug 'sheerun/vim-polyglot'	    " Appearance - language pack 
    Plug 'mhinz/vim-startify'	    " Appearance - startpage
    Plug 'airblade/vim-gitgutter'   " Appearance - git change in sidebar
    "Plug 'akinsho/bufferline.nvim'  " Appearance - buffer styples
    Plug 'kyazdani42/nvim-tree.lua' " Appearance - file tree for nvim
    Plug 'preservim/nerdtree'	    " Appearance - file tree for vim
    Plug 'nvim-lua/plenary.nvim'    " Appearance - luna plug
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	" Appearance - file color
    Plug 'Xuyuanp/nerdtree-git-plugin'	" Appearance - file git icons
    Plug 'nvim-telescope/telescope.nvim'        " Appearance - pop up fzf
    Plug 'kyazdani42/nvim-web-devicons'         " Appearance - nvim icons
    Plug 'lukas-reineke/indent-blankline.nvim'  " Appearance - indent line for nvm
    "Plug 'norcalli/nvim-colorizer.lua'          " Appearance - color display

    Plug 'jiangmiao/auto-pairs'	    " Edit - auto pair
    "Plug 'dense-analysis/ale'	    " Edit - language server protocol
    "Plug 'vim-syntastic/syntastic'  " Edit - error detector
    Plug 'dkarter/bullets.vim'	    " Edit - makes bullet easier
    Plug 'preservim/nerdcommenter'  " Edit - easier comment
    Plug 'sirver/ultisnips'	    " Edit - text snippit
    Plug 'easymotion/vim-easymotion'" Edit - motion movements
    Plug 'tpope/vim-surround'	    " Edit - easy surround syntax change
    Plug 'gcmt/wildfire.vim'	    " Edit - easy seclection tool
    Plug 'tpope/vim-fugitive'	    " Edit - git tool
	Plug 'vim-pandoc/vim-pandoc'	" Edit - syntax library
    Plug 'KKPMW/vim-sendtowindow'   " Edit - send code to terminal
    Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}  " Edit - R-environment
	Plug 'vim-pandoc/vim-pandoc-syntax'			  " Edit - syntax highlight
	Plug 'lervag/vimtex', {'tag': 'v1.6'}    	  " Edit - latex syntax support
    Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'} " Edit - clean latex
    Plug 'dhruvasagar/vim-table-mode'	" Edit - easier tables
    Plug 'neoclide/coc.nvim', {'branch': 'release'}	" Edit - auto complition
    "Plug 'iamcco/markdown-preview.nvim'		" Edit - markdown preview

call plug#end()

" ================================================================================
" =================================== CONFIGS ====================================
" ================================================================================

" Appearance Config
" --------------------------- itchyny/lightline.vim ------------------------------
" ================================================================================
set laststatus=2
set noshowmode

" itchyny/lightline.vim {{{
let g:lightline = {
\   'colorscheme': 'wombat',
\   'active': {
\    'left' :[[ 'mode', 'paste' ], ['gitbranch', 'smarttabs'],
\     [ 'readonly', 'filename', 'modified' ]],
\    'right':[[ 'filetype', 'percent', 'lineinfo' ], [ 'cocstatus' ]]
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

function! LightlineCoc() abort
    if winwidth(0) < 60
        return ''
    endif

    return coc#status()
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
        let l:word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
    endif

    let l:current_line = printf('%-3s', line('.'))
    let l:max_line = printf('%-3s', line('$'))
    let l:lineinfo = '⚑' . l:current_line . '/' . l:max_line . '   ⍵:' . l:word_count
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
    return &modified ? '●' : ''
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

let g:lightline#trailing_whitespace#indicator = ''
" }}}


" ---------------------- ryanoasis/vim-devicons/nerdtree -------------------------
" ================================================================================
" set encoding=UTF-8
let NERDTreeIgnore = ['\~$','\.pyc$','\*NTUSER*','\*ntuser*','\NTUSER.DAT','\ntuser.ini']
let NERDTreeQuitOnOpen=1

" ---------------------- ryanoasis/vim-devicons/nerdtree -------------------------
" ================================================================================
nnoremap <C-n> :NvimTreeToggle<CR>
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

let s:header = [
      \ '',
	  \ "  ",
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

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Recent Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ] 

let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 1
let g:startify_enable_special = 0
let g:startify_fortune_use_unicode = 1
let g:startify_relative_path = 1
let g:startify_files_number           = 10
let g:startify_session_persistence    = 1
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

" ------------ nvim-lua/plenary.nvim & nvim-telescope/telescope.nvim -------------
" ================================================================================
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Edit configs
" ----------------------------- dense-analysis/ale -------------------------------
" ================================================================================
"let g:ale_sign_column_always = 1
"let g:ale_sign_error = '★'
"let g:ale_sign_warning = '⚠'
"highlight clear ALEErrorSign
"highlight clear ALEWarningSign
"let g:ale_set_highlights = 1
"let g:ale_disable_lsp = 1
"let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

" -------------------------- vim-syntastic/syntastic -----------------------------
" ================================================================================
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

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

" ----------------- lervag/vimtex & KeitaNakamura/tex-conceal.vim ----------------
" ================================================================================
let g:tex_flavor='latex'
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


" ------------------------------ neoclide/coc.nvim -------------------------------
" ================================================================================
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-y> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>+ <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
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

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>d  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

let g:coc_global_extensions = ['coc-json', 'coc-vimlsp', 'coc-vimtex', 'coc-texlab']

" ================================================================================
" ============================== EDITOR BEHAVIOR =================================
" ================================================================================

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
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set scrolloff=10
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

"Theme
set background=dark
colorscheme nord
if has("gui_running")
    colorscheme onedark
    hi CursorLineNr guibg=#434c5e guifg=white
endif
set t_Co=256
set termguicolors " enable true colors support
set guifont=Hack_Nerd_Font_Mono:h14
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 0
"hi LineNr guibg=#61afef
set cursorline
hi CursorLineNr ctermbg=blue ctermfg=white



" ================================================================================
" -------------------------------- Basic Mappings --------------------------------
" ================================================================================
let mapleader=" "
noremap <leader>q :q<CR>
noremap <leader>w :w<CR>
noremap <leader>s :source ~/.vimrc<CR>
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
source /Users/melaneyzhu/dotfiles/_snippts.vim
