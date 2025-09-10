if has("gui_running")
  set gfn=Monaco\ 12
endif

" use m and , as my customized leader character

" gtags wrapper for cscope
map mm <C-]>
map ms <C-\>s
map me <C-\>e
map mc <C-\>c

" save current session
map my :mksession! .session.vim<CR>

" split window
map mh :split<CR>
map mv :vsplit<CR>

" open a terminal in a split window
map mt :terminal<CR>

" theme
set background=dark
colorscheme jellybeans

set smartindent

" c++: 4, c/kernel 8(default)
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4

" use space instead of tab, execute ':retab' in vim to convert tab to space
" set expandtab

" highlight search result
set hlsearch
hi Search cterm=None ctermfg=Cyan ctermbg=DarkGray
map mn :hi Search cterm=None ctermfg=Cyan ctermbg=DarkGray<CR>
map ,h :nohlsearch<CR>

set encoding=utf-8

" line number
set nu
set rnu
set nocsverb

" disable line number
map ,a :set nornu<CR>:set nonu<CR>
nmap <C-a> :set nornu<CR>:set nonu<CR>

" enable line number
map ,z :set nu<CR>:set rnu<CR>
nmap <C-e> :set nu<CR>:set rnu<CR>

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

" Jump between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" fzf
map ff :Files<CR>
map fb :Buffer<CR>
map fg :GFiles?<CR>
map fc :Commits<CR>

" CtrlPFunky
map mf :CtrlPFunky<CR>
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1

" Nerdtree
map ,2 :NERDTreeToggle<CR>
let g:NERDTreeWinSize=25

" Tagbar
map ,3 :TagbarToggle<CR>

" git-gutter
map ,4 :GitGutterToggle<CR>
map ,5 :GitGutterLineHighlightsToggle<CR>
map gn :GitGutterNextHunk<CR>
map gp :GitGutterPrevHunk<CR>
set updatetime=300
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

" vim-airline-theme, themes are located in ~/.vim/plugged/vim-airline-themes/autoload/airline/themes
let g:airline_theme='violet'

" vim-gutentags
let g:gutentags_project_root = ['.root', '.git']
let g:gutentags_modules = ['gtags_cscope']
let g:gutentags_cache_dir = expand('~/.cache/gtags')
"let g:gutentags_auto_add_gtags_cscope = 0

" jedi-vim: python auto-complete (enable if necessary)
"let g:jedi#documentation_command = "mk"
"let g:jedi#max_doc_height = 20
"let g:jedi#goto_command = "mg"
"let g:jedi#goto_assignments_command = "mj"

" vim-plug session begin
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'majutsushi/tagbar'
Plug 'chazy/cscope_maps'
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ludovicchabant/vim-gutentags'
Plug 'will133/vim-dirdiff'
"Plug 'davidhalter/jedi-vim'
call plug#end()
