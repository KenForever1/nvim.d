let mapleader="\<Space>"

set number
set showcmd
set rtp+=/home/steve/.config/nvim/config
source /home/steve/.config/nvim/config/common.vim

call plug#begin()
Plug 'tpope/vim-sensible'
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <leader>ft :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

call defx#custom#option('_', {
            \ 'winwidth': 30,
            \ 'split': 'vertical',
            \ 'direction': 'topleft',
            \ 'show_ignored_files': 0,
            \ 'buffer_name': '',
            \ 'toggle': 1,
            \ 'resume': 1
            \ })
