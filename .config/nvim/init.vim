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
    " interface
    Plug 'vim-airline/vim-airline'
    Plug 'cloudhead/neovim-fuzzy'
    Plug 'tpope/vim-fugitive'
    " Autocompletion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'editorconfig/editorconfig-vim'
    " themes
    Plug 'dracula/vim', { 'as': 'dracula' }
    " Languages
    Plug 'hashivim/vim-terraform'
  call plug#end()

  " Plugins options
  source ~/.config/nvim/dracula.vim
  source ~/.config/nvim/airline.vim
  source ~/.config/nvim/fuzzy.vim
  source ~/.config/nvim/coc.vim
  source ~/.config/nvim/terraform.vim
endif

" Enable mouse support
set mouse=a

" Use smartindent
set smartindent

" Start scrolling before the last line
set scrolloff=4

" Disable swap files
set noswapfile

" Disable mode indicator
set noshowmode

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

