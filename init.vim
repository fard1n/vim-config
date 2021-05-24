inoremap jj <Esc>
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap jj <Esc>
colorscheme molokai

let mapleader = ','
set backspace = eol
set nonumber
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
"------------------Mapping------------------"

"Make it easy edit VIMRC file"
nmap ,ev :tabedit $MYVIMRC<cr>
nmap <Leader>e :tabedit  C:\Users\fardin3t\AppData\Local\nvim\vim-plug\Plugins.vim<cr>
nmap <Leader><space> :nohlsearch<cr>

"NERDTree"
noremap <leader>n :NERDTreeFocus<CR>
noremap <C-n> :NERDTree<CR>
noremap <C-t> :NERDTreeToggle<CR>
noremap <C-f> :NERDTreeFind<CR>

"Toggle fullscreen for qt-neovim and other gui-vims"
nnoremap <expr> <Leader><Leader> GuiWindowFullScreen==1 ? ':call GuiWindowFullScreen(0)<cr>' : ':call GuiWindowFullScreen(1)<cr>'


"------------------Search--------------------"

set hlsearch

"------------------Visuals--------------------"

hi Pmenu ctermfg=250 ctermbg=236 guifg=#BBBBBB guibg=#2D2D30
hi PmenuSel ctermfg=250 ctermbg=24 guifg=#BBBBBB guibg=#073655
hi PmenuSbar ctermbg=237 guibg=#3D3D40
hi PmenuThumb ctermbg=250 guibg=#BBBBBB

"set Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 10 
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

if has("gui_running")
    set guioptions -=m 
    set guioptions -=T
endif


set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set signcolumn=no

"fake a custom padding for each window"
set foldcolumn=0

hi versplit guifg=bg guibg=bg

"------------------Split Manager--------------------"

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-H> <C-W><C-H>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>


"------------------Compile------------------"
"nmap <Leader><R> :! 

"-----------------Auto-Commands--------------"

"Automatically source the VIMRC file on save"
augroup autosourcing
    autocmd!
    autocmd BufWritePost vim source C:\Program\ Files\ (x86)\Vim\_vimrc
augroup END 
