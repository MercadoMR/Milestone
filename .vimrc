" Vim configurations without plugins
 " Basic settings
syntax on
set termguicolors " Enable true colors support
set nocompatible " Behave like Vim, not Vi
set showmatch    " show the matching part of pairs [] {} and () "
set hidden       " Allow buffers to be hidden when no window is showing them
set expandtab    " Use spaces instead of tabs
set shiftwidth=4 " Number of spaces to use for autoindent
set tabstop=4    " Number of spaces a tab counts for
set autoindent   " Copy indent from current line
set smartindent  " Smart autoindent for C-like languages
set wrap         " Wrap lines that are too long
set number       " Show line numbers
"set cursorline   " Highlight the current line
"set cursorcolumn " Highlight cursor line underneath the cursor vertically.
set showmatch    " Show matching brackets
set incsearch    " Incremental search
set hlsearch     " Highlight search results
set ignorecase   " Ignore case in search patterns
set smartcase    " Override ignorecase if search pattern contains uppercase letters
set wildmenu     " Enable auto completion menu after pressing TAB.
"set mouse=a      " Enable mouse support in all modes
set backspace=indent,eol,start " Make backspace work like other editors

" Disable auto commenting in a new line
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r  formatoptions-=o

" Setting the character encoding of Vim to UTF-8
set encoding=UTF-8

" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Enable spell check
"set spell

set mouse=a      " Enable mouse support in all modes

" Show the mode you are on the last line.
set showmode
set paste
set virtualedit=all

" Key mappings (examples)
noremap <C-s> :w<CR> " Save file with Ctrl-s
noremap <C-q> :q<CR> " Quit with Ctrl-q
noremap <C-u> ggVG " Select all text using Ctrl+u
nnoremap <C-c> "+y " In insert mode yank (copy) the visually selected text to the system clipboard
vnoremap <C-c> "+y " In visual mode yank (copy) the visually selected text to the system clipboard using Ctrl+C

" Map V-Block to not confuse with Past
noremap <leader>v <C-v>

"map <right> :bn<cr>
"map <left> :bp<cr>

" Paste from clipboard
"map <S-Insert> "+gP<cr>
"imap <S-Insert> "+gPs

" For copy and past
"map <C-V> "+P
"vnoremap <C-C> "*y :let @+=@*<CR>
" If not in Linux replace the keybinding in above line with: vnoremap <C-C> "+y

noremap <Leader>f :find <C-R>=expand("%:p:h") . "/"<CR> " Find files in current directory

" shift+arrow selection
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

" Usual copy and paste
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
"map <C-v> pi
"imap <C-v> <Esc>pi
"imap <C-z> <Esc>ui

vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa


