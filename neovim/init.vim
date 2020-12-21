" VIM SETTINGS "

" Line numbering on
set nu

" Trigger `autoread` when file changes on disk
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif

" Default syntax highlighting
syntax on

" Mouse on
set mouse=a
set encoding=utf-8

" Set tabs to space always
set expandtab

" EXPLORER

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_winsize = 20

" PLUGINS "

" Enable plugins and set path
filetype plugin on
call plug#begin('~/.vim/addons')

Plug 'camspiers/lens.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'arcticicestudio/nord-vim'

if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
  	Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'eslint/eslint'

call plug#end()

" PLUGINS SETTINGS

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" JsBeautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Theme
colorscheme nord

" Deoplete
let g:deoplete#enable_at_startup = 1
