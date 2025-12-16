" Initialize vim-plug

call plug#begin('~/.vim/plugged')



" Plugins

Plug 'ctrlpvim/ctrlp.vim'           " fuzzy find files

Plug 'preservim/nerdtree'

Plug 'tomasiser/vim-code-dark'

Plug 'junegunn/fzf'                 " remove lambda syntax

Plug 'junegunn/fzf.vim'



call plug#end()



" Basic settings

set nocompatible

set ruler

syntax off

set bs=2

set hlsearch

set ignorecase

set autoindent

set smartindent



" Cursor shapes (Linux-compatible)

let &t_SI = "\<Esc>[5 q"

let &t_SR = "\<Esc>[4 q"

let &t_EI = "\<Esc>[2 q"



" Leader key

let mapleader = ","

let g:mapleader = ","



" NERDTree

nmap <leader>n :NERDTreeFocus<CR>

nmap <C-n> :NERDTreeToggle<CR>



" Buffers

nnoremap H :bprevious<CR>

nnoremap L :bnext<CR>

nnoremap b :bdelete<CR>

nnoremap gb :ls<CR>:b<Space>



" Search and replace

nnoremap ge yiw:%s/<C-r>0//g<Left><Left>



" Files (requires ctrlp)

nnoremap <leader>f :Files<CR>



" Window resizing

nnoremap = <C-w>>

nnoremap - <C-w><

nnoremap m :noh<CR>



" Clipboard

noremap <Leader>y "+y

noremap <Leader>p "+p



" Save

nnoremap <C-s> :w<CR>

inoremap <C-s> <Esc>:w<CR>a

vnoremap <C-s> <Esc>:w<CR>gv



" Terminal mapping (Linux-compatible)

nnoremap <leader>t :botright terminal<CR>

tnoremap <Esc> <C-\><C-n>



" Better movement on wrapped lines

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')

noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')



" NERDCommenter

nnoremap <leader>c :call nerdcommenter#Comment(0, "toggle")<CR>

vnoremap <leader>c :call nerdcommenter#Comment(0, "toggle")<CR>



" FZF abort keys

let g:fzf_action = { 'abort': ['ctrl-c', 'ctrl-g', 'esc'] }


