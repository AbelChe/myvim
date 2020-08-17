" leader键 需要在使用leader键的设置之前
"let mapleader=","
"let g:mapleader=","


" START Plugins and plugins settings --------------------------
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
call plug#end()
" preservim/nerdtree
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:w<CR>:NERDTreeToggle<CR>
" neoclide/coc.nvim
let g:coc_disable_startup_warning = 1
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" preservim/nerdcommenter
"" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" END Plugins and plugins settings ----------------------------


" START 自定义快捷键 -------------------
"" 行号显示模式
nmap <F2> :set relativenumber!<CR>
imap <F2> <C-O>:set relativenumber!<CR>
"" 全选
nmap <C-a> <ESC>ggvG$
"" 覆盖ctrl s为保存
nmap <C-s> <ESC>:w<CR>
imap <C-s> <C-O>:w<CR>
" END 自定义快捷键 ---------------------


" 其他设置 -----------------------------------------------------------------------
filetype plugin indent on

syntax on

set helplang=cn
" 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 总是显示状态行
set laststatus=2

" 一个tab键所占的列数，linux 内核代码建议每个tab占用8列
set tabstop=4
" 敲入tab键时实际占有的列数
set softtabstop=4
" shiftwidth用于设置Tab键宽度
set shiftwidth=4
" expandtab用于将Tab转化为空格
set expandtab
" ts用于设置tab键表示的空格数
set ts=4

" 显示不可见字符
"set listchars=tab:>-,trail:-
"set list

" 显示行号
set number
set relativenumber

set nobackup
set nowritebackup

set ruler

"set showcmd

" 换行不添加注释
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set cursorline
se t_Co=256
colorscheme gruvbox
set background=dark
highlight Normal       ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
"highlight LineNr       ctermbg=232 ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLineNr ctermbg=131 ctermfg=215 guibg=NONE guifg=NONE
highlight CursorLine   ctermbg=238 ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorColumn ctermbg=238 ctermfg=NONE guibg=NONE guifg=NONE
