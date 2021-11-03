set nocompatible
set encoding=utf-8
set encoding=utf8
scriptencoding utf-8

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/bin/fzf

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dracula/vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tomlion/vim-solidity'
Plugin 'preservim/nerdtree'
Plugin 'dense-analysis/ale'
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
call vundle#end()

syntax on
syntax enable

filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

color default
colorscheme dracula

set background=dark "to have this theme on Tmux
set t_Co=256 "to have this theme on Tmux
set number
set listchars=trail:~,tab:>-\,eol:< " show special characters"
set list
set cindent
set shiftwidth=2
set cursorcolumn
set ma
set expandtab
set hidden " Change buffer without saving
set autoindent

" Map Tab to switch buffers
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
nnoremap <Leader>\ :w<cr>
nnoremap <silent> <C-f> :Files<CR>

" activate flow syntax for javascript
let g:javascript_plugin_flow = 1

let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_column_always = 1

let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'

let g:ale_linters = { 
                \ 'ruby': ['rubocop', 'sorbet'], 
                \ 'typescript': ['eslint', 'tsserver'], 
                \ 'javascript': ['eslint', 'flow']}
let g:ale_fixers = { 
                \ '*': ['remove_trailing_lines', 'trim_whitespace'], 
                \ 'ruby': ['rubocop'], 
                \ 'javascript': ['eslint'], 
                \ 'typescript': ['eslint']}

let g:ale_ruby_rubocop_executable = './bin/container-rubocop'
let g:ale_ruby_sorbet_executable = './bin/container-sorbet'
let g:ale_javascript_eslint_executable = './bin/container-javascript'

nnoremap <silent><leader>lf :ALEFix<CR>
nnoremap <silent><leader>ld :ALEDetail<CR>