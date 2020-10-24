syntax enable                           " Enables syntax highlighing
set autoread                            " auto reload file
set wrap                                " Display long lines as just one line
set nolist                              " no linebreak list
set linebreak                           " linebreak
set encoding=utf-8                      " The encoding displayed 
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
" set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set textwidth=0
set wrapmargin=0
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers 
set relativenumber                      " Show relative number  
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs 
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set formatoptions=cro                   " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set autochdir                           " Your working directory will always be the same as your working directory
set ignorecase                          " Make search ignore case sensitive
set smartcase                           " if you got 'S' it will search uppercase only

" remove arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

filetype plugin on
colorscheme gruvbox

" Switch to your current theme
let g:airline_theme = 'gruvbox'

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'

set background=dark                     " tell vim what the background color looks like

" You can't stop me
cmap w!! w !sudo tee %

let g:ranger_terminal = 'urxvt -e'
let g:ranger_terminal = 'xterm -e'

" let g:hardtime_default_on = 1 
