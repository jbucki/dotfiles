set t_Co=256
set nocompatible
set number
set ruler
syntax on
set encoding=utf-8  " Set encoding

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" set list listchars=tab:\ \ ,trail:*/ " look into this option...

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" CTags
" map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

function s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Hammer<CR>
endfunction

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
" au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Use modeline overrides
" NOTE: I don't know what this does...
set modeline
set modelines=10

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Show (partial) command in the status line
set showcmd

" Include user's local vim config
"if filereadable(expand("~/.vimrc.local"))
"  source ~/.vimrc.local
"endif

"Navigate between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"{ and } were causing me wrist strain...
nnoremap J }
nnoremap K {
vnoremap J }
vnoremap K {

" Window resizing
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif
" nnoremap <C-Left> :vertical resize -5<cr>
" nnoremap <C-Down> :resize +4<cr>
" nnoremap <C-Up> :resize -5<cr>
" nnoremap <C-Right> :vertical resize +5<cr>
" nnoremap <S-Up> :normal <c-r>=Resize('+')<CR><CR>
" nnoremap <S-Down> :normal <c-r>=Resize('-')<CR><CR>
" nnoremap <S-Left> :normal <c-r>=Resize('<')<CR><CR>
" nnoremap <S-Right> :normal <c-r>=Resize('>')<CR><CR>

syntax enable
set guifont=Monaco:h13
color ir_black

" File searching
map <leader>F :Ack 
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
let g:CommandTSelectNextMap='<Down>'
let g:CommandTSelectPrevMap='<Up>'

let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
" let vimclojure#WantNailgun = 1
