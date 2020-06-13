" File: vim-winsanity.vim
" Author: René Michalke
" Description: A Vim plugin that makes split- and tab-navigation painless.
" Last Modified: Juni 13, 2020
 
" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" better split creation
nnoremap <silent> <leader>i <C-w>v
nnoremap <silent> <leader>- <C-w>s

" opens current buffer in new tab page
nnoremap <leader>z :tab split<CR>
" close split and jump to previous split
nnoremap <leader>wc <c-w>q:execute "" . expand(winnr('#')) . "wincmd w"<cr>
" close split and jump to previous split
nnoremap <leader>x <c-w>q:execute "" . expand(winnr('#')) . "wincmd w"<cr>
" equalize the size of open splits
nnoremap <leader>w= <c-w>=

set splitbelow
set splitright

" open alternate file in new split
nnoremap <leader>^i :execute "rightbelow vsplit " . bufname('#')<cr>
nnoremap <leader>^- :execute "rightbelow split " . bufname('#')<cr>

" tab navigation
nnoremap <leader>h :tabprevious<CR>
nnoremap <leader>H :tabfirst<CR>
nnoremap <leader>l :tabnext<CR>
nnoremap <leader>L :tablast<CR>
