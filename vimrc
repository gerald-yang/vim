colorscheme molokai
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

" Zip function
nnoremap zh zfap

"Generate gtags
nmap <F12> : !vimindex<CR>

"Jump between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Tagbar <F2>
nmap <F2> :TagbarToggle<CR>

map aa : Bookmark<CR>
let g:NERDTreeWinPos = "right"
let NERDTreeShowBookmarks=1

"Auto complete pop <F5>, <F6>
nmap <F5> : AcpEnable<CR>
nmap <F6> : AcpDisable<CR>

"Buffer explorer
map bb : BufExplorer<CR>

"Fuzzyfinder
map ff : FufFile<CR>
map fd : FufDir<CR>
map ft : FufTag<CR>
map fbf : FufBookmarkFile<CR>
map faf : FufBookmarkFileAdd<CR>
map fbd : FufBookmarkDir<CR>
map fad : FufBookmarkDirAdd<CR>
map fe : FufEditDataFile<CR>

" from vundle
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

Bundle 'wincent/Command-T'
Bundle 'bufexplorer.zip'
Bundle 'echofunc.vim'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'chazy/cscope_maps'
Bundle 'kien/ctrlp.vim'
Bundle 'OmniCppComplete'
Bundle 'AutoComplPop'
Bundle 'will133/vim-dirdiff'



filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
