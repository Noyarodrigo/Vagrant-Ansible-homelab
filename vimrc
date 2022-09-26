syntax enable
set noshowcmd
set cmdheight=1
set noshowmode
set noruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber

set laststatus=0
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'NLKNguyen/papercolor-theme'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'

call plug#end()

set t_Co=256   " This is may or may not needed.

set background=light
colorscheme PaperColor

let g:indent_guides_enable_on_vim_startup = 1

let g:lightline = { 'colorscheme': 'PaperColor' }
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }

let mapleader=" "
let NERDTreeQuitOnOpen=1


nnoremap <Leader>c :set cursorline!<CR>
hi CursorLine term=bold cterm=bold guibg=Grey

nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>x :x<CR>
nmap <leader>i :IndentGuidesToggle<CR>

noremap <leader>tv :botright vnew <Bar> :terminal<cr>
noremap <leader>th :botright new <Bar> :terminal<cr>
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

