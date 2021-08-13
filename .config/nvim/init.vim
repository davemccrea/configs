if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Set leader key
let mapleader = ","

" Vim should use system keyboard
" Psst - is Xclip installed?
set clipboard+=unnamedplus

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

" Visual feedback about vim mode
Plug 'itchyny/lightline.vim'

" Colors
Plug 'dracula/vim', {'as': 'dracula'}

call plug#end()

colorscheme dracula

let g:gitgutter_override_sign_column_highlight=1

" Disable error sounds 
set vb t_vb=

" Show relative line numbers
set relativenumber

" Map escape key to jj
:imap jj <Esc>

