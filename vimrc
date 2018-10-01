set background=dark
"colorscheme solarized
"colorscheme jellybeans
"colorscheme molokai
colorscheme gruvbox

" For YouCompleteMe
set encoding=utf-8
" set mouse=a
set nu
set rnu
set nocsverb

set undolevels=500

set csprg=gtags-cscope
cs add GTAGS

" Adjust window size
nmap + <C-W>+
nmap - <C-W>-
nmap > <C-w>>
nmap < <C-w><

" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap k gk
map J <C-d>
map K <C-u>
map U <C-f>
map I <C-b>

" Generate gtags
nmap <F12> : !vimindex<CR>

" Jump between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Explore
map ef :Explore<CR>
map ed :bd<CR>

" CtrlP
map ff :CtrlP<CR>
map bb :CtrlPBuffer<CR>

" CtrlPFunky
nmap <C-f> :CtrlPFunky<CR>
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1

" Tagbar <F2>
nmap <F2> :TagbarToggle<CR>

" Nerdtree
nmap <F3> :NERDTreeToggle<CR>

" git-gutter
nmap <F4> :GitGutterToggle<CR>
nmap <F5> :GitGutterLineHighlightsToggle<CR>
map gn :GitGutterNextHunk<CR>
map gp :GitGutterPrevHunk<CR>
"let g:gitgutter_signs = 0

" vim-plug session begin
call plug#begin('~/.vim/plugged')

" My plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'majutsushi/tagbar'
Plug 'chazy/cscope_maps'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'Townk/vim-autoclose'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
"Plug 'AutoComplPop'
"Plug 'will133/vim-dirdiff'

"vim-plug session end
call plug#end()
