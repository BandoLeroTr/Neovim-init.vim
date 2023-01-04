call plug#begin()
        
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'yggdroot/indentline'

Plug 'kivy/kivy'
"lug 'davidhalter/jedi-vim'""

"Plug 'honza/vim-snippets'"
"Plug 'natebosch/dartlang-snippets'"
"Plug 'cj/vim-webdevicons'"
"Plug 'tpope/vim-projectionist'"
"Plug 'chun-yang/auto-pairs'"
"Plug 'iamcco/coc-flutter'"
"Plug 'dart-lang/dart-vim-plugin'"
"Plug 'thosakwe/vim-flutter'"
"Plug 'raimondi/delimitmate'"
"Plug 'nvim-lua/plenary.nvim'"
"Plug 'akinsho/flutter-tools.nvim'"
call plug#end()
let g:pymode_rope = 0
set cursorline
set nocompatible
set number
set encoding=UTF-8
set mouse=a
set guicursor=i:block
set softtabstop=4 
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

nmap <C-t> :colorscheme desert<CR>
nmap <C-y> :colorscheme elflord<CR>
augroup python_syntax_extra
  autocmd!
  autocmd! Syntax python :syn keyword Keyword self
augroup END

let g:gruvbox_contrast_dark='hard'                                       
set termguicolors                    
syntax enable                        
colorscheme gruvbox                  
set background=dark   

nmap <F9> :PlugInstall<CR>
nmap <F10> :PlugClean<CR>
nmap <F11> :PlugUpdate<CR>

autocmd VimEnter * NERDTree | wincmd p
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:NERDTreeMouseMode = 3
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

noremap <silent> <C-b> :NERDTreeToggle<CR>
vnoremap <silent> <C-b> <C-C>:NERDTreeToggle<CR>
inoremap <silent> <C-b> <C-O>:NERDTreeToggle<CR>

noremap <silent> <C-r> :call NERDTreeToggleAndRefresh()<CR>
vnoremap <silent> <C-r> <C-C>:call NERDTreeToggleAndRefresh()<CR>
inoremap <silent> <C-r> <C-O>:call NERDTreeToggleAndRefresh()<CR>

function NERDTreeToggleAndRefresh()
  :NERDTreeToggle
  if g:NERDTree.IsOpen()
    :NERDTreeRefreshRoot
    :NERDTreeFocus
  endif
endfunction

vnoremap <Tab> >gV
vnoremap <S-Tab> <gV
 
nmap <C-z> u

noremap <silent> <C-k> :highlight Comment gui=bold <CR>
vnoremap <silent> <C-k> <C-C> :highlight Comment gui=bold <CR>
inoremap <silent> <C-k> <C-O> :highlight Comment gui=bold <CR>

noremap <silent> <F3> :set number<CR>
vnoremap <silent> <F3> <C-C>:set number<CR>
inoremap <silent> <F3> <C-O>:set number<CR>

noremap <silent> <F4> :set nonumber<CR>
vnoremap <silent> <F4> <C-C>:set nonumber<CR>
inoremap <silent> <F4> <C-O>:set nonumber<CR>

noremap <silent> <C-f> :Lines<CR>
vnoremap <silent> <C-f> <C-C>:Lines<CR>
inoremap <silent> <C-f> <C-O>:Lines<CR>

noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

noremap <silent> <C-Q> :q<CR>
vnoremap <silent> <C-Q> <C-C>:q<CR>
inoremap <silent> <C-Q> <C-O>:q<CR>

noremap <silent> <C-w> :vsplit<CR>
vnoremap <silent> <C-w> <C-C>:vsplit<CR>
inoremap <silent> <C-w> <C-O>:vsplit<CR>

noremap <silent> <F5> :FlutterRun<CR>
vnoremap <silent> <F5> <C-C>:FlutterRun<CR>
inoremap <silent> <F5> <C-O>:FlutterRun<CR>

noremap <silent> <C-e> :tabnew<CR>
vnoremap <silent> <C-e> <C-C>:tabnew<CR>
inoremap <silent> <C-e> <C-O>:tabnew<CR>

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
hi Pmenu ctermfg=white ctermbg=black gui=NONE guifg=white guibg=black

noremap <silent> <Esc> <C-c>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
vnoremap <silent> <Esc> <C-C><C-c>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
inoremap <silent> <Esc> <C-O><C-c>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
imap <Esc> <C-c>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

let g:indentLine_char_list = ["|"]

"noremap <silent> <F5> :CocCommand flutter.run<CR>"
"vnoremap <silent> <F5> <C-C>:CocCommand flutter.run<CR>"
"inoremap <silent> <F5> <C-O>:CocCommand flutter.run<CR>"
