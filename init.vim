:set number
:set relativenumber
:set smarttab
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/preservim/tagbar' 
Plug 'https://github.com/Vimjas/vim-python-pep8-indent'
Plug 'https://github.com/dense-analysis/ale'
Plug 'https://github.com/ycm-core/YouCompleteMe'

set encoding=UTF-8

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview 

call plug#end()
:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

let g:ale_linters = {'python': 'all'}
let g:ale_fixers = {'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace']}

let g:ale_lsp_suggestions = 1
let g:ale_fix_on_save = 1
let g:ale_go_gofmt_options = '-s'
let g:ale_go_gometalinter_options = '— enable=gosimple — enable=staticcheck'
let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %code: %%s'

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <silent> K :call <SID>show_documentation()<CR>



nnoremap <Tab> :YcmCompleter Format<CR>

nnoremap <C-K> :delete<CR> 

nnoremap <C-D> :copy .<CR> 

