""" Appearance

" syntax highlighting
syntax on

" line numbers
set number

" turn off text wrapping
set nowrap

" set color theme
colorscheme lucius
LuciusDarkLowContrast

" indenting
set cindent
set expandtab
set tabstop=2
set shiftwidth=2

" check perl code
autocmd FileType perl set makeprg=clear;perl\ %\
autocmd FileType perl set autowrite

" run python
autocmd BufRead *.py set makeprg=clear;python2.7\ %\ 
autocmd BufRead *.py set autowrite

" run go
autocmd BufRead *.go set makeprg=clear;go\ run\ %\ 
autocmd BufRead *.go set autowrite

" run node.js
autocmd BufRead *.js set makeprg=clear;node\ %\ 
autocmd BufRead *.js set autowrite

" compile c code
autocmd FileType c set makeprg=clear;make\ test
autocmd FileType c set autowrite

" compile rust code
autocmd BufRead *.rs set makeprg=clear;rustc\ %\;./%<
autocmd BufRead *.rs set autowrite

" compile LaTeX
autocmd BufRead *.tex set makeprg=clear;pdflatex\ %;
autocmd BufRead *.tex set autowrite

" run java
autocmd FileType java set makeprg=clear;javac\ \*.java;java\ %<;
autocmd FileType java set autowrite

" set paste mode
set pastetoggle=<F2>

" insert new line
map <Cr> O<Esc>

" make F5 compile
map <F5> :make!<cr>

" push to git
map <F6> :w<Cr>:!push<Cr>

" run JUnit tests
map <F7> :w<Cr>:!junit %<<Cr>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" change buffer
map <C-l> :bn<Cr>
map <C-h> :bp<Cr>

" search settings
set ignorecase
set incsearch
set smartcase
set scrolloff=10

" ignore class files
set wildignore=*.class

setlocal spell spelllang=en
nmap ss :set spell!<CR>
set nospell