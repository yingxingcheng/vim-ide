"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                                                                              "
"                       __   _ _ _ __ ___  _ __ ___                            "
"                       \ \ / / | '_ ` _ \| '__/ __|                           "
"                        \ V /| | | | | | | | | (__                            "
"                         \_/ |_|_| |_| |_|_|  \___|                           "
"                                                                              "
"                                                                              "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

" let $vimhome=fnamemodify(resolve(expand("~/.vimrc")), ':p:h')
let $vimhome=expand('~/.vim')
let $vundle=$vimhome."/bundle/Vundle.vim"

" Be iMproved
set nocompatible

"=====================================================
"" Vundle settings
"=====================================================
filetype off
set rtp+=$vundle
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'               " let Vundle manage Vundle, required

    "-------------------=== Code/Project navigation ===-------------
    Plugin 'scrooloose/nerdtree'                " Project and file navigation
    Plugin 'majutsushi/tagbar'                  " Class/module browser
    " Plugin 'ctrlpvim/ctrlp.vim'                 " Fast transitions on project files

    "-------------------=== Other ===-------------------------------
    Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
    Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
    Plugin 'rosenfeld/conque-term'              " Consoles as buffers
    " Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more; Doesn't work on MacOS
    " Plugin 'flazz/vim-colorschemes'             " Colorschemes

    "-------------------=== Snippets support ===--------------------
    Plugin 'SirVer/ultisnips'                   " Snippets
    Plugin 'honza/vim-snippets'                 " snippets repo

    "-------------------=== Languages support ===-------------------
    " Plugin 'Valloric/YouCompleteMe'             " Autocomplete plugin


    "------------------YingXing Cheng-------------------------------
    Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plugin 'junegunn/fzf.vim'"
    Plugin 'dense-analysis/ale'                 " Real time linting
    Plugin 'davidhalter/jedi-vim'               " Code navigation
    Plugin 'tpope/vim-fugitive'
    Plugin 'ervandew/supertab'                  " Fix conflict between NERDTREE and UltiSnips
    Plugin 'jiangmiao/auto-pairs'               " Auto pairs
    Plugin 'plasticboy/vim-markdown'
    Plugin 'joshdick/onedark.vim'
    Plugin 'airblade/vim-gitgutter'             " Atom theme
    Plugin 'sheerun/vim-polyglot'               " multi color for different language
    Plugin 'Yggdroot/indentLine'                " indent line
    Plugin 'mhinz/vim-startify'

    "-------------------- Latex support ------------------
    Plugin 'lervag/vimtex'
    Plugin 'tpope/vim-dispatch'
    " Plugin 'ckunte/latex-snippets-vim'
    " Plugin 'Exafunction/codeium.vim'


call vundle#end()                           " required
filetype on
filetype plugin on
filetype plugin indent on

"=====================================================
"" General settings
"=====================================================
syntax enable                               " syntax highlight

set t_Co=256                                " set 256 colors
" colorscheme wombat256mod                    " set color scheme
" colorscheme Monokai                    " set color scheme
colorscheme onedark
set background=dark    " Setting dark mode

set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...

let mapleader = " "                         " set the leader key


" File searchs
nmap <leader>f :Rg<CR>
nmap <F8> :TagbarToggle<CR>

" Additional mappings for Esc (useful for MacBook with touch bar)
inoremap jj <Esc>
inoremap jk <Esc>



"=====================================================
"" Tabs / Buffers settings
"=====================================================
" tab sball
" set switchbuf=useopen
" set laststatus=2
" Switching between buffers
" Set commands to switching between buffers
:nnoremap <Tab><Tab> :bnext!<CR>
:nnoremap <S-Tab> :bprevious!<CR>
" :nnoremap <C-X> :bp<bar>sp<bar>bn<bar>bd<CR>
:nnoremap <C-X> :bd<CR>
" nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>


"=====================================================
" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results

highlight Search guibg=#af005f ctermbg=125
"""" clear highlight with <esc> after a search
" nnoremap <C-h> :noh<return>


"=====================================================
"" AirLine settings
"=====================================================
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=42
" autocmd BufEnter *.py :call tagbar#autoopen(0)

"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=40
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap " :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'            " Change marks
let g:NERDTreeDirArrowCollapsible = '▾'


" highlight 'long' lines (>= 100 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%101v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=100
augroup END


"=====================================================
" Execute Python
"=====================================================
" we use a custom command to run python to use differernt python interpreter.
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType julia map <buffer> <F5> :w<CR>:exec '!julia' shellescape(@%, 1)<CR>
autocmd FileType julia imap <buffer> <F5> :w<CR>:exec '!julia' shellescape(@%, 1)<CR>


"=====================================================
" YouCompleteMe
set completeopt-=preview
"=====================================================

let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_identifier_candidate_chars = 2
"let g:ycm_goto_buffer_command='split'
let g:ycm_max_num_candidates=10
let g:ycm_auto_trigger = 1

" nnoremap <leader>g :tab vertical \| YcmCompleter GoTo<CR>
" nnoremap <leader>d :tab vertical \| YcmCompleter GoToDefinition<CR>
nnoremap <leader>g :tab split \| YcmCompleter GoTo<CR>
nnoremap <leader>d :tab split \| YcmCompleter GoToDefinition<CR>

" let g:jedi#use_tabs_not_buffers = 1


"=====================================================
" Fix Bugs
"=====================================================
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


"=====================================================
" Ale Configuration
"=====================================================
"""" Better formatting fo worp/ale
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%] [%...code...%]'
"""" Enable completion where available.
let g:ale_completion_enabled = 1
""" Customize linters that are turned on
"let g:ale_linters = { 'python': ['pylint', 'flake8', 'pydocstyle','bandit','mypy']}
let g:ale_linters = { 'python': ['pylint', 'flake8']}
let g:ale_fixers = {
            \'*':['remove_trailing_lines', 'trim_whitespace'],
            \'python': ['black'],
            \}
"\'python': ['black', 'isort', 'autopep8'],
let g:ale_set_highlights = 0
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

"=====================================================
" Markdown
"=====================================================
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0


"=====================================================
" Key map
"=====================================================

inoremap <C-b> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-f> <Right>
" inoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-f> <Right>

" go back to the line last opened
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
let g:tex_conceal = ""


function! ZoteroCite()
  " pick a format based on the filetype (customize at will)
  let format = &filetype =~ '.*tex' ? 'citep' : 'pandoc'
  let api_call = 'http://127.0.0.1:23119/better-bibtex/cayw?format='.format.'&brackets=1'
  let ref = system('curl -s '.shellescape(api_call))
  return ref
endfunction

noremap <localleader>z "=ZoteroCite()<CR>p
inoremap <C-z> <C-r>=ZoteroCite()<CR>
