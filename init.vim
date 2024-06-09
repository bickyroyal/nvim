" General: {{{1

let mapleader = ' '
let maplocalleader = ' '

colorscheme lunaperche

lua require("rene")

" Interface: {{{1

set tabstop=4
set shiftwidth=4
set expandtab

set number
set relativenumber

set scrolloff=5
set sidescrolloff=2

set list
set lcs=tab:│\ ,trail:·,leadmultispace:│\ \ \ ,nbsp:_,extends:>

" TODO foldtext

" Behaviour: {{{1

set ignorecase
set smartcase

set confirm

set mousemodel=extend

set splitright
set splitbelow

set undofile
set noswapfile

" Keymaps: {{{1

" windows

nmap <C-j> <C-w>j<CR>
nmap <C-k> <C-w>k<CR>
nmap <C-h> <C-w>h<CR>
nmap <C-l> <C-w>l<CR>

" azerty

map ù [
map µ ]

map ç {
map à }

" clipboard

nmap gy "+y
xmap gy "+y

nmap gp "+p
xmap gp "+p

" better movement for wrapped lines

nmap <expr> j v:count == 0 ? 'gj' : 'j'
nmap <expr> k v:count == 0 ? 'gk' : 'k'

nmap <expr> H v:count == 0 ? 'g^' : '^'
nmap <expr> L v:count == 0 ? 'g$' : '$'

" insert empty lines in normal mode

map gO <Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>
map go <Cmd>call append(line('.')    , repeat([''], v:count1))<CR>

" toggle options

nmap <leader>tw <Cmd>set wrap!<CR>
nmap <leader>tn <Cmd>set relativenumber!<CR>
nmap <leader>th <Cmd>let v:hlsearch = 1 - v:hlsearch<CR>

" Autocommands: {{{1

augroup highlight_yank
    au!
    au TextYankPost * lua vim.highlight.on_yank({ timeout = 300 })
augroup END

" vim: foldmethod=marker
