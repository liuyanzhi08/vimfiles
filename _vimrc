let mapleader = ";"
syntax enable 

set lines=35 columns=120
set guifont=ubuntu_mono:h13
set laststatus=0
set number

" enable loading the plugin for appropriate file type
filetype plugin on 

"auto hide and show the toolbar=======================
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>
"=======================================================


"=======================================================
" vim7.1在windows下的编码设置。By Huadong.Liu
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8
"=======================================================

map <C-k> kddpk
map <C-j> ddp

"for split windows
map <leader>vs :vsplit<CR>
map <leader>sp :sp<CR>


"map <ESC>
vmap <C-w> <ESC>
imap <C-w> <ESC>

"tab navigation
map <C-o> :tabnew<CR>
map <leader>wq :wq<CR>
map <leader>w :w<CR>
map <leader>fq :q!<CR>
map <leader>fqa :qa!<CR>
map <leader>q :q<CR>
map <leader>qa :qa<CR>
map <C-i> :tabp<CR>

"colorscheme
colorscheme railscasts@7li

"command history map
cmap <C-p> <up>
cmap <C-n> <down>
cmap <C-f> <right>
cmap <C-b> <left>
nmap <C-n> :

"for select all
map <C-a> ggVG

"copy and paste
nmap <C-V> "+p
imap <C-V> <ESC><C-V>
vmap <C-C> "+y

"cut text
vmap <C-x> "+x

"map ctrl-s saving file
imap <C-S> <ESC>:w<CR>
nmap <C-s> :w<CR>

"===========================================================================
"============= The following config is for plugins  ========================
"===========================================================================

"Nerdtree plugin
"let NERDTreeDirArrows=1
map <F1> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>
let NERDTreeMouseMode=2
let NERDTreeAutoCenter=1
let NERDTreeWinSize=25
let NERDTreeMinimalUI = 1

"ctrlp plugin
let g:ctrlp_working_path_mode = 0 "let the working_path unchange

"Zoomwin plugin
map <leader>zw  :ZoomWin<cr>
