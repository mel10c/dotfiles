"
"                ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"                ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"                ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"                ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"                ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"                ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
" 
"                                BY MELANEY ZHU
"                              mel10njyhc@gmail.com
"                               github.com/mel10c
"

" ============================== EDITOR BEHAVIOR =================================
" ================================================================================
"set signcolumn=number
set signcolumn=yes
source ~/.config/nvim/setting.vim

" =================================== PLUG IN ====================================
" ================================================================================
source ~/.config/nvim/plugins.vim

" =================================== CONFIGS ====================================
" ================================================================================
source ~/.config/nvim/appearance/appearance_config.vim
source ~/.config/nvim/appearance/startify.vim
source ~/.config/nvim/appearance/nvim_tree.vim
source ~/.config/nvim/appearance/telescope.vim
luafile ~/.config/nvim/appearance/statusline.lua

source ~/.config/nvim/edit_config.vim
source ~/.config/nvim/edit/whick_key.vim
source ~/.config/nvim/edit/floaterm.vim

" -------------------------------- Basic Mappings --------------------------------
" ================================================================================
source ~/.config/nvim/mapping_config.vim
source ~/.config/nvim/writing.vim
luafile ~/.config/nvim/lua_config.lua
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
