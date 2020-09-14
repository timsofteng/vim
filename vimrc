
"Plugins configs
"source $HOME/.vim/plug-config/fzf.vim
source $HOME/.vim/plug-config/clap.vim
source $HOME/.vim/plug-config/floaterm.vim
source $HOME/.vim/plug-config/repeat.vim
source $HOME/.vim/plug-config/ticket.vim
source $HOME/.vim/plug-config/fugitive.vim
source $HOME/.vim/plug-config/ctrlsf.vim
source $HOME/.vim/plug-config/closetag.vim
source $HOME/.vim/plug-config/coc.vim
"source $HOME/.vim/plug-config/lsc.vim
source $HOME/.vim/plug-config/ale.vim
source $HOME/.vim/plug-config/fern.vim
source $HOME/.vim/plug-config/startify.vim

"set vim plugins
source $HOME/.vim/vim-plug/plugins.vim

" Edit vimr configuration file
nnoremap confe :vs $MYVIMRC<CR>
" Reload vims configuration file
nnoremap confr :source $MYVIMRC<CR>
"vimplug
nnoremap vimplug :vs ~/.vim/vim-plug/plugins.vim<CR>

set autoread " detect when a file is changed
"au BufEnter * :checktime
"autocmd FileChangedShell

"added dialog before closing buffers
set confirm

" allow buffer switching without saving
"set hidden

set mouse=a
"Mouse windows resizing
set ttymouse=sgr

set tabstop=2 shiftwidth=2 expandtab

set nocompatible
filetype off

set diffopt+=vertical  " Always use vertical diffs

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch " highlight search results
set incsearch " set incremental search, like modern browsers

"Apperance
set number
set relativenumber
set linebreak " set soft wrapping
set cursorline " Highlight the line currently under cursor
"set ttyfast " faster redrawing


"Частота обновления вима
set updatetime=300

" Display command line’s tab complete options as a menu
set wildmenu

" Buffers line
"let g:airline#extensions#tabline#enabled = 1


"For correct appear in st-term
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
"set t_Co=256
" Colorscheme
"set background=dark
set background=light
colorscheme solarized8

set encoding=utf-8
" Set font competable with icons
set guifont=DejavuSansMono\ Nerd\ Font\ 10

"Disable ability change all letters to lowercase
"in visual mode by press "u"
xnoremap u <nop>
"search word in visual mode by predding "//"
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"disable highlighting by double Esc
nnoremap <Esc><Esc> :noh <CR>

"jumping between buffers
nnoremap <Leader>n :bn <CR>
nnoremap <Leader>p :bp <CR>
nnoremap <Leader>d :BD <CR>

"remap leader key
"let mapleader="'"


" augroup my-glyph-palette
"     autocmd! *
"       autocmd FileType fern call glyph_palette#apply()
"         autocmd FileType nerdtree,startify call glyph_palette#apply()
"       augroup END

"let g:fern_git_status#disable_submodules = 1
"let g:fern_git_status#disable_directories = 1
"let g:fern_git_status#disable_ignored = 1
"let g:fern_git_status#disable_untracked = 1

"для Prettier
nnoremap <Leader>p :Prettier<CR>
"js
hi def link jsObjectKey Type

"vue
let g:vim_vue_plugin_use_scss = 1
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_highlight_vue_attr = 1
let g:vim_vue_plugin_highlight_vue_keyword = 1

"css colors
let g:Hexokinase_highlighters = [ 'sign_column' ]

syntax enable
syntax sync fromstart