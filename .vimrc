call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'romainl/Apprentice'
Plug 'AlessandroYorba/Alduin'
Plug 'jeetsukumaran/vim-nefertiti'
Plug 'KKPMW/moonshine-vim'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'vim-crystal/vim-crystal'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme gruvbox

set wildmenu
set wildmode=full
set background=dark
"set background=light
set termguicolors
syntax on
set number
set expandtab
set tabstop=4
set shiftwidth=4
set hidden
set cursorline
set cursorcolumn
set ft=nasm
set splitbelow
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

let g:lsp_diagnostics_enabled = 1
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif 

if executable('solargraph')
    " gem install solargraph
    au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
endif

if executable('lua-lsp')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'lua-lsp',
                \ 'cmd': {server_info->[&shell, &shellcmdflag, 'lua-lsp']},
                \ 'whitelist': ['lua'],
                \ })
endif
