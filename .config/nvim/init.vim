if &shell =~# 'fish$'
  set shell=sh
endif

" Install vim-plug if it is not intsalled and install all the plugins
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
  silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
  echo "Done ! Restart vim for changes to take effect"

else
  " every time you open vim check to see of there is any new plugins added,
  " if so update them
  autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugInstall --sync | source ~/.config/nvim/init.vim
    \| endif

  call plug#begin(stdpath('data') . '/plugged')
    " Interface
    Plug 'vim-airline/vim-airline'
    Plug 'cloudhead/neovim-fuzzy', { 'branch': 'master' }
    Plug 'junegunn/fzf.vim'
    " Plug 'airblade/vim-gitgutter'
    " Plug 'tpope/vim-fugitive'
    Plug 'Yggdroot/indentLine'
    Plug 'eugen0329/vim-esearch'
    " Autocompletion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'editorconfig/editorconfig-vim'
    " Themes
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'arcticicestudio/nord-vim'
    " Languages
    Plug 'hashivim/vim-terraform'
    Plug 'pangloss/vim-javascript'
    Plug 'dag/vim-fish'
    Plug 'digitaltoad/vim-pug'
    Plug 'fatih/vim-go'
    Plug 'posva/vim-vue'
    " Extra
    Plug 'wakatime/vim-wakatime'
    call plug#end()

  " Plugins options
  source ~/.config/nvim/airline.vim
  source ~/.config/nvim/fuzzy.vim
  source ~/.config/nvim/coc.vim
  source ~/.config/nvim/terraform.vim
  source ~/.config/nvim/javascript.vim

  " Set dracula theme
  colorscheme dracula

  " Disable mode indicator
  set noshowmode

  let g:indentLine_char = '›'
  let g:indentLine_concealcursor = "nv"

  autocmd Filetype json let g:indentLine_setConceal = 0
endif

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show signcolumn
set signcolumn=yes

" Set true colors
set termguicolors

" Enable syntax
syntax enable

" Highlight current line
set cursorline

" Show line number
set number

" Enable mouse support
set mouse=a

" Use smartindent
set smartindent

" Start scrolling before the last line
set scrolloff=10

" Disable swap files
set noswapfile

" Use system clipboard
set clipboard=unnamedplus

" Set jk to esc
:imap jk <Esc>

" Move line up or down (shift + up, shift + down)
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Next buffer leader + ]
nnoremap <Leader>] :bn<cr>

" Prev buffer leader + [
nnoremap <Leader>[ :bp<cr>

" Close buffer
nnoremap <Leader><BS> :bd<cr>

