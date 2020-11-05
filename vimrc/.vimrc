call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'romainl/Apprentice'
Plug 'AlessandroYorba/Alduin'
Plug 'jeetsukumaran/vim-nefertiti'
Plug 'KKPMW/moonshine-vim'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'vim-crystal/vim-crystal'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-solargraph'
call plug#end()

colorscheme apprentice

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
set statusline^=%{coc#status()}

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
