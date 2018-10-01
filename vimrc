set background=dark
"colorscheme solarized
colorscheme jellybeans
"colorscheme molokai
"colorscheme gruvbox

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

" airline
"let g:airline_section_a       (mode, crypt, paste, spell, iminsert)
"let g:airline_section_b       (hunks, branch)[*]
"let g:airline_section_c       (bufferline or filename)
"let g:airline_section_gutter  (readonly, csv)
"let g:airline_section_x       (tagbar, filetype, virtualenv)
"let g:airline_section_y       (fileencoding, fileformat)
"let g:airline_section_z       (percentage, line number, column number)
"let g:airline_section_error   (ycm_error_count, syntastic-err, eclim, languageclient_error_count)
"let g:airline_section_warning (ycm_warning_count, syntastic-warn, languageclient_warning_count, whitespace)
let g:airline_section_b = ''
let g:airline_section_error = ''
let g:airline_section_warning = ''
let g:airline_theme='violet'

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
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"Plug 'AutoComplPop'
"Plug 'will133/vim-dirdiff'

"vim-plug session end
call plug#end()
