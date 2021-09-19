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

" =================================== PLUG IN ====================================
" ================================================================================
source ~/.config/nvim/plugins.vim

" ============================== EDITOR BEHAVIOR =================================
" ================================================================================
"set signcolumn=number
set signcolumn=yes
nnoremap ,ff <cmd>Telescope find_files<cr>
source ~/.config/nvim/setting.vim

" =================================== CONFIGS ====================================
" ================================================================================
source ~/.config/nvim/edit/floaterm.vim
source ~/.config/nvim/edit/bullets.vim
source ~/.config/nvim/edit/commenter.vim
source ~/.config/nvim/edit/latex.vim
source ~/.config/nvim/edit/table_mode.vim
source ~/.config/nvim/edit/send_code.vim
source ~/.config/nvim/edit/whick_key.vim
source ~/.config/nvim/edit/coc.vim

source ~/.config/nvim/appearance/appearance_config.vim
source ~/.config/nvim/appearance/startify.vim
source ~/.config/nvim/appearance/nvim_tree.vim
source ~/.config/nvim/appearance/vista.vim
luafile ~/.config/nvim/appearance/telescope.lua
luafile ~/.config/nvim/appearance/statusline.lua
luafile ~/.config/nvim/appearance/devicon.lua
luafile ~/.config/nvim/appearance/gitsigns.lua
luafile ~/.config/nvim/appearance/treesitter.lua

"source ~/.config/nvim/edit/lsp_config.vim
"luafile ~/.config/nvim/edit/lsp_server.lua
"luafile ~/.config/nvim/edit/compe_config.lua

" -------------------------------- Basic Mappings --------------------------------
" ================================================================================
source ~/.config/nvim/mapping_config.vim
source ~/.config/nvim/writing.vim
