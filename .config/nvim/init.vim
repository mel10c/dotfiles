set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc

call plug#begin('$HOME/.config/nvim/plugged')
    Plug 'nvim-telescope/telescope.nvim'    " Appearance - pop up fzf
call plug#end()

" ------------ nvim-lua/plenary.nvim & nvim-telescope/telescope.nvim -------------
" ================================================================================
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
