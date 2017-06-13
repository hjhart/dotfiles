set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Bundle 'gabrielelana/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set history=100      " Keep 100 commands in the history
set ruler            " show the cursor position all the time
set showcmd          " display incomplete commands
set relativenumber   " relative line numbers
set number           " show current line numver
set nowrap           " don't wrap lines
set vb               " disable alert sound
set autoread         " Auto-reload buffers when files are changed on disk
set linebreak        " break lines at word end
set splitbelow       " open the horizontal split below
set splitright       " open vertical splits on the right
set linespace=0      " number of pixels between the lines
set wildmenu         " show completion on the modeline
set ls=2             " show a status line even if there's only one window
set exrc             " enable per-project .vimrc files
set synmaxcol=1200   " Syntax coloring lines that are too long just slows down the world
set nostartofline    " Don't reset cursor to start of line when moving around
set nojoinspaces     " Use only 1 space after "." when joining lines instead of 2
set cursorline       " Display a cursor line

" Searching
set incsearch        " do incremental searching
" set hlsearch         " Highlight the search
set ignorecase       " Case insensitive search
set smartcase        " Case sensitive search if the string contains captible letters
nnoremap <leader>, :set hlsearch!<CR>

" Turn pasting on / off
nnoremap cop :setlocal paste!<CR>

" Enable file type detection and load plugin indent files as well as syntax
" highlighting
filetype plugin on
filetype indent on
syntax enable
syntax sync fromstart  " http://vim.wikia.com/wiki/Fix_syntax_highlighting

" Appereance
" set background=dark
set t_Co=256 " 256 colors
colorscheme solarized
highlight ColorColumn ctermbg=235 " Make it more obviouser when lines are too long
set list listchars=tab:»·,trail:· " Display extra whitespace

set guicursor+=n-v-c:blinkon0
set guifont=Monaco:h16

filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim

set rtp+=~/.vim/bundle/powerline/bindings/vim

inoremap jk <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE (thanks Gary Bernhardt)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
nnoremap <leader>n :call RenameFile()<CR>


nnoremap <leader>v :source ~/.vimrc<CR>


" tmux integration
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <C-l> :TmuxNavigateRight<CR>
" nnoremap <silent> <C-\> :TmuxNavigatePrevious<CR>
nnoremap <silent> <C-\> :VtrFocusRunner<CR>
nnoremap <leader>ro :VtrOpenRunner<CR>
nnoremap <leader>a :VtrAttachToPane<CR>
nnoremap <leader>rf :VtrSendFile<CR>
nnoremap <leader>rd :VtrSendCtrlD<CR>
nnoremap <leader>rc :VtrClearRunner<CR>
nnoremap <leader>s mm:VtrSendLinesToRunner<CR>`m
vnoremap <leader>s mm:VtrSendLinesToRunner<CR>`m
nnoremap <leader>S mmggVG:VtrSendLinesToRunner<CR>`m
vnoremap <leader>S mm<C-c>ggVG:VtrSendLinesToRunner<CR>`m
nnoremap <leader>rl :VtrOpenRunner<CR>:VtrSendCommandToRunner !!<CR>
nnoremap <leader>rri :VtrOpenRunner<CR>:VtrSendCommandToRunner irb<CR>
nnoremap <leader>rrc :VtrOpenRunner<CR>:VtrSendCommandToRunner rails c<CR>
nnoremap <leader>rrs :VtrOpenRunner<CR>:VtrSendCommandToRunner spring stop<CR>
nnoremap <leader>rrm :VtrOpenRunner<CR>:VtrSendCommandToRunner rake db:migrate<CR>
nnoremap <leader>rrM :VtrOpenRunner<CR>:VtrSendCommandToRunner rake db:migrate RAILS_ENV=test<CR>
" let g:VtrStripLeadingWhitespace = 0
" let g:VtrClearEmptyLines = 0
" let g:VtrAppendNewline = 1
"

map ,f :Ack!<cr>
map ,g y:Ack!'<C-R>0'<cr>
map ,e :CtrlPBuffer<cr>
map \ :NERDTreeToggle<cr>
nnoremap <silent> <Space> :nohl<CR><C-l>
map ,t :Vipe bundle exec rspec <c-r>%:<c-r>=line('.')<cr><cr>
map ,y :Vipe<cr>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip  
