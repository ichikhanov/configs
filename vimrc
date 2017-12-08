execute pathogen#infect()
set autoread   
set tabstop=4
set expandtab
set splitright
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
set number
let g:pep8_map='<leader>8' 
nnoremap <F3> :set hlsearch!<CR>
let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>
set pastetoggle=<F2>
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set shiftwidth=4
syntax enable
map <F4> :NERDTreeToggle<CR>
set background=dark
colorscheme solarized
filetype plugin indent on
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=128
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"virtualEnv
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
"
"for vim with python3
"py3 << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  exec(compile(open(activate_this, "rb").read(), activate_this, 'exec'), dict(__file__=activate_this))
"EOF
"ignore compiled
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif
"
set ruler
"YCM small settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E225'
let python_highlight_all=1
set wildignore+=*/tmp/*,*/env/*,*.so,*.swp,*.zip

set laststatus=2
let g:airline_theme='solarized'
