" ============================== SYNTAX ======================================

" MacVim Bugs
"inoremap .. <!-- _ -->

" Style shortcut
"inoremap ,, <++>
"inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
"inoremap ,b ****<Esc>F*i
"inoremap ,u <u></u><Esc>F/hi
"inoremap ,i **<Esc>i
"inoremap ,c ```<CR><++><CR>```<CR><Esc>3kA
""inoremap $ $$<Esc>i
""inoremap ,$ $<Esc>a
""inoremap $$ $$<Enter>$$<Enter><Esc>2ko
"inoremap ,t \| u \|<++><Esc>Fus
"inoremap ,pic ![](<++>) <++><Esc>F[a
"inoremap ,k [](<++>) <++><Esc>F[a
"inoremap ,l ------------------------------------------------------------
"inoremap ,1 #
"inoremap ,2 ##
"inoremap ,3 ###
"inoremap ,4 ####
"inoremap ,5 #####

" Latex shortcut
" === symbol ==
"inoremap inn \in
"inoremap \cc \subseteq
"inoremap \rarr \Rightarrow
"inoremap \lrarr \Leftrightarrow
"inoremap NN \mathbb{N}
"inoremap \O \emptyset
"inoremap RR \mathbb{R}^{}<Esc>i
"inoremap QQ \mathbb{Q}
"inoremap ZZ \mathbb{Z}
"inoremap \map \mapsto
"inoremap \fa \forall
"inoremap \es \exists
"inoremap \q \quad
" === letters ==
"inoremap \mcal \mathcal{}<Esc>F{a
"inoremap \mb \mathbb{}<Esc>F{a
"inoremap \al \alpha
"inoremap \ep \varepsilon
"inoremap \v \vec{}<Esc>F{a
"inoremap \conj \overline{}<Esc>F{a
" === special forms ==
"inoremap ^^ ^{}<Esc>i
"inoremap \frac \frac{}{<++>}<Esc>F{hi
"inoremap \fun f: \R^{<++>} \to \R^{<++>}<Esc>Ffs
"inoremap \sq \sqrt{}<Esc>F{a
"inoremap \tt \text{}<Esc>F{a
"inoremap \tc \texttt{}<Esc>F{a
" === math operators ==
"inoremap \dx \frac{\mathrm{d} y}{\mathrm{d} x} \,
"inoremap \lim \lim_{u \to <++>}<Esc>Fus
"inoremap \int \int_{u}^{<++>}<Esc>Fus
"inoremap \sum \sum_{u}^{<++>}<Esc>Fus
" === brackets ==
"inoremap \mat \begin{bmatrix}u \\ <++>\end{bmatrix}<++><Esc>Fus
"inoremap \lmat \begin{bmatrix}u \\ <++> \\ <++>\end{bmatrix}<++><Esc>Fus
"inoremap \2mat \begin{bmatrix}u & <++> \\ <++> & <++>\end{bmatrix}<++><Esc>Fus
"inoremap \eq \left\{\begin{matrix}u  & =<++> \\ <++> & =<++>\end{matrix}\right.<Esc>Fus
"inoremap \( \left( u \right)<Esc>Fus
"inoremap \[ \left[ u \right]<Esc>Fus
"inoremap \{ \left\{ u \right\}<Esc>Fus
"inoremap << \langle u \rangle<Esc>Fus




" ============================== MARKDOWN ======================================
" Style shortcut
" autocmd Filetype markdown,tex,latex inoremap ,, <++>
