if has("gui_running")
  set gfn=Monaco\ 12
endif

" use m as my customized leader character

" gtags wrapper for cscope
map mm <C-]>
map ms <C-\>s
map me <C-\>e
map mc <C-\>c

" save current session
map my :mksession! .session.vim<CR>
map mh :split<CR>
map mv :vsplit<CR>

set background=dark
"colorscheme solarized
colorscheme jellybeans
"colorscheme molokai
"colorscheme gruvbox

set smartindent

" ceph: 4, kernel 8(default)
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4

" use space instead of tab, execute ':retab' in vim to convert tab to space
set expandtab

" highlight search result
set hlsearch
hi Search cterm=None ctermfg=Cyan ctermbg=DarkGray
map mn :hi Search cterm=None ctermfg=Cyan ctermbg=DarkGray<CR>
map nh :nohlsearch<CR>

" fold settings, zc: fold, zo: unfold
set foldmethod=syntax
set foldlevelstart=999
" fold usage:
" zc: fold current function
" zo: unfold current function
" zC: fold to the top of the current function
" zO: unfold top top of the current function
" zM: fold all
" zR: unfold all

" For YouCompleteMe
set encoding=utf-8

" set mouse=a
set nu
set rnu
set nocsverb
" no line number
map ma :set nornu<CR>:set nonu<CR>
nmap <C-a> :set nornu<CR>:set nonu<CR>
" set line number
map mz :set nu<CR>:set rnu<CR>
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

" CtrlP, run 'Ctrl+D' in prompt to switch between filename and fullpath modes
"map bb :CtrlPBuffer<CR>
"let g:ctrlp_by_filename = 1
"let g:ctrlp_max_files = 0
"set wildignore+=*.o,*.a
"let g:ctrlp_custom_ignore = '\v[\/]\.(o|a)$'
"let g:ctrlp_user_command = 'find %s -type f -name *.cc -o -name *.c -o -name *.h -o -name *.hpp'

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
map m2 :NERDTreeToggle<CR>
let g:NERDTreeWinSize=25

" Tagbar
map m3 :TagbarToggle<CR>

" git-gutter
map m4 :GitGutterToggle<CR>
map m5 :GitGutterLineHighlightsToggle<CR>
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

" jedi-vim
let g:jedi#documentation_command = "mk"
let g:jedi#max_doc_height = 20
let g:jedi#goto_command = "mg"
let g:jedi#goto_assignments_command = "mj"

" vim-go
map gb :GoBuild<CR>
map gr :GoRun<CR>
map gq :GoDoc<CR>
" built-in: gd (goto definition)
map gt :GoDefType<CR>
" GoImplements list implementations of an interface
map gi :GoImplements<CR>
map gcr :GoCallers<CR>
map gce :GoCallees<CR>
map gs :GoReferrers<CR>
map gcs :GoCallstack<CR>
map gpt :GoPointsTo<CR>
map gpr :GoPeers<CR>
" :GoDef but opens in a vertical split
autocmd FileType go nmap gv <Plug>(go-def-vertical)
" :GoDef but opens in a horizontal split
autocmd FileType go nmap gh <Plug>(go-def-split)
" Do not use K
let g:go_doc_keywordprg_enabled = 0
" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1

au filetype go inoremap <buffer> . .<C-x><C-o>

" vim-plug session begin
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'majutsushi/tagbar'
Plug 'chazy/cscope_maps'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ludovicchabant/vim-gutentags'
Plug 'will133/vim-dirdiff'
Plug 'davidhalter/jedi-vim'
Plug 'fatih/vim-go'
call plug#end()
