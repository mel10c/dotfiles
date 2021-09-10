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
    "return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    return 'v:lua.webDevIcons(absolute_path) . " " . entry_path'
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

" -------------------------------- Theme-settings- -------------------------------
" ================================================================================
"colorscheme nord
colorscheme onedark
hi LineNr guifg=#4c566a
set t_Co=256
set termguicolors " enable true colors support
set guifont=Hack_Nerd_Font_Mono:h14
set cursorline
map <leader>0 <Cmd>colorscheme onedark<CR>
map <leader>9 <Cmd>colorscheme nord<CR>
hi normal guibg=none

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
hi CursorLineNr guibg=#4c566a guifg=white
