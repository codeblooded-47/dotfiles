" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    Plug 'ycm-core/YouCompleteMe'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'itchyny/lightline.vim'
    "Plug 'arcticicestudio/nord-vim'
    Plug 'frazrepo/vim-rainbow'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'chrisbra/colorizer'
    Plug 'JamshedVesuna/vim-markdown-preview'
    Plug 'forevernull/vim-json-format'
call plug#end()

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

"Testing 
let g:colorizer_auto_color = 1
let g:colorizer_auto_filetype='*'

set encoding=utf-8
set number


" dracula stuff
" packadd! dracula
syntax enable
let g:dracula_colorterm = 0
colorscheme dracula
let g:dracula_colorterm = 0
set termguicolors
" rainbow stuff
source ~/.config/nvim/vim-plug/rainbow.vim

let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
map <space>[ :RainbowLoad <CR>


" nord theme stuff
"colorscheme nord


" NerdTree Stuff
map <C-b> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" lightline stuff
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'powerlineish',
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ }
if !has('gui_running')
  set t_Co=256
endif
"shortcut key to compile cpp 
" map <F9> :w <CR> :!clear && g++ % <CR>
map <F9> :w <CR> :!clear && g++ % -o %< && ./%< <CR>



let g:rnvimr_ex_enable = 1

nmap <space>r :RnvimrToggle<CR>

" shortcut keys for editor
map <C-S> :w! <CR>



"Markdown stuff
let vim_markdown_preview_github=1
let vim_markdown_preview_hot='<space>m'
nmap <space>m :call Vim_Markdown_Preview()<CR>

"
"
"json formatter
map <space>jf :call json_format#parse("l")<cr>


" hi Normal guibg=NONE ctermbg=NONE
"
