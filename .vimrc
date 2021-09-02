"		 __  ____   __ _     _____ __  __ ____   ____
"		|  \/  \ \ / /| \   / /_ _|  \/  |  _ \ / ___|
"		| |\/| |\ V /  \ \ / / | || |\/| | |_) | |
"		| |  | | | |    \ V /  | || |  | |  _ <| |___
"		|_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____|
"
"				BY MELANEY ZHU
"			     mel10njyhc@gmail.com
"
"			       TABLE OF CONTENTS
"		1. Auto Load -------------------------- (~20)
"		2. Plug-In ---------------------------- (~40)
"		3. Plug-IN Congfigerations ------------ (~)
"		4. Editor Behaviors ------------------- (~)
"		5. Basic Mappings --------------------- (~)
"		6. Sources ---------------------------- (~)



" ================================================================================
" ================================== AUTO LOAD ===================================
" ================================================================================
if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if empty(glob($HOME.'/.config/nvim/plugged/wildfire.vim/autoload/wildfire.vim'))
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

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
    Plug 'preservim/nerdtree'	    " Appearance - file tree for vim
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	" Appearance - file color
    Plug 'Xuyuanp/nerdtree-git-plugin'	" Appearance - file git icons

    Plug 'jiangmiao/auto-pairs'	    " Edit - auto pair
    "Plug 'dense-analysis/ale'	    " Edit - language server protocol
    Plug 'dkarter/bullets.vim'	    " Edit - makes bullet easier
    Plug 'preservim/nerdcommenter'  " Edit - easier comment
    Plug 'sirver/ultisnips'	    " Edit - text snippit
    Plug 'easymotion/vim-easymotion'" Edit - motion movements
    Plug 'tpope/vim-surround'	    " Edit - easy surround syntax change
    Plug 'gcmt/wildfire.vim'	    " Edit - easy seclection tool
    Plug 'tpope/vim-fugitive'	    " Edit - git tool
	Plug 'vim-pandoc/vim-pandoc'	" Edit - syntax library
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

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent', 'WordCount' ],  [ 'cocstatus' ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'LightlineGitbranch',
      \   'wordcount': 'WordCount',
      \ },
      \ }

function! WordCount()
    let currentmode = mode()
    if !exists("g:lastmode_wc")
        let g:lastmode_wc = currentmode
    endif
    " if we modify file, open a new buffer, be in visual ever, or switch modes
    " since last run, we recompute.
    if &modified || !exists("b:wordcount") || currentmode =~? '\c.*v' || currentmode != g:lastmode_wc
        let g:lastmode_wc = currentmode
        let l:old_position = getpos('.')
        let l:old_status = v:statusmsg
        execute "silent normal g\<c-g>"
        if v:statusmsg == "--No lines in buffer--"
            let b:wordcount = 0
        else
            let s:split_wc = split(v:statusmsg)
            if index(s:split_wc, "Selected") < 0
                let b:wordcount = str2nr(s:split_wc[11])
            else
                let b:wordcount = str2nr(s:split_wc[5])
            endif
            let v:statusmsg = l:old_status
        endif
        call setpos('.', l:old_position)
        return b:wordcount
    else
        return b:wordcount
    endif
endfunction

function! LightlineGitbranch() abort
    if exists('*fugitive#head')
        let maxlen = 20
        let branch = fugitive#head()
        return branch !=# '' ? ' '. s:trim(maxlen, branch) : ''
    endif
    return fugitive#head()
endfunction

" ---------------------- ryanoasis/vim-devicons/nerdtree -------------------------
" ================================================================================
" set encoding=UTF-8

" ---------------------------- RRethy/vim-illuminate -----------------------------
" ================================================================================
let g:Illuminate_delay = 750
hi illuminatedWord cterm=undercurl gui=undercurl


" ----------------------------- mhinz/vim-startify  ------------------------------
" ================================================================================
map gs :Startify<CR>
let g:startify_custom_header = [
  \ "  ",
  \ '				   ╻ ╻   ╻   ┏┳┓',
  \ '				   ┃┏┛   ┃   ┃┃┃',
  \ '				   ┗┛    ╹   ╹ ╹',
  \ '				   ',
  \ ]

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

" ----------------------------- preservim/nerdtree -------------------------------
" ================================================================================
"nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap te :NERDTree<CR>
nnoremap tt :NERDTreeToggle<CR>
nnoremap tf :NERDTreeFind<CR>
nnoremap tu :NERDTree /Users/melaneyzhu/OneDrive\ -\ University\ of\ Toronto<CR>
nnoremap td :NERDTree /Users/melaneyzhu/melaneyroot.github.io<CR>
nnoremap tc :NERDTree /Users/melaneyzhu/<CR>

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

" ------------------------------ sirver/ultisnips --------------------------------
" ================================================================================
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" ----------------- lervag/vimtex & KeitaNakamura/tex-conceal.vim ----------------
" ================================================================================
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

set conceallevel=1
let g:tex_conceal="abdgm"
hi Conceal ctermbg=none

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
set cmdheight=5

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=number
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
inoremap <silent><expr> <c-b> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>= <Plug>(coc-diagnostic-next)

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
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

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

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

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
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

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
autocmd CursorHold * silent call CocActionAsync('highlight')

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

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
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
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set list
set scrolloff=10
set wrap
set noshowmode
set showcmd
set wildmenu
set wildmode=longest,list,full
set ignorecase
set smartcase
set shortmess+=c
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
set colorcolumn=80
set updatetime=100
set nohlsearch
set incsearch
nnoremap <esc><esc> :silent! nohls<cr>
set guioptions=

" Theme
set background=dark
colorscheme onedark
set t_Co=256
set guifont=Hack_Nerd_Font_Mono:h14
let g:vim_markdown_folding_disabled=1

" ================================================================================
" ============================== EDITOR BEHAVIOR =================================
" ================================================================================

let mapleader=" "

" -------------------------------- Basic Mappings --------------------------------
noremap <leader>q :q<CR>
noremap <leader>s :w<CR>
noremap <leader>s :source ~/.vimrc<CR>
noremap <D-s> :w<CR>
nnoremap Y y$
vnoremap Y "+y
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> H 0
noremap <silent> L $
noremap W 5w
noremap B 5b
nnoremap n nzz
nnoremap N Nzz
" -------------------------- Insert Mode Emacs-style mapping ---------------------
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-d> <ESC>ls

" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>k <C-w>k
noremap <LEADER>j <C-w>j
noremap <LEADER>h <C-w>h
noremap <LEADER>l <C-w>l

" ----------------------------- Screen Motion Remaps -----------------------------
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap Sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap Sj :set splitbelow<CR>:split<CR>
noremap Sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap Sl :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" find and replace
noremap \s :%s//g<left><left>



set termguicolors " enable true colors support

" Snippets
source /Users/melaneyzhu/dotfiles/_snippts.vim
" add
