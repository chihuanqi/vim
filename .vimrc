set nocompatible               " 设置 vim 为不兼容 vi 模式
filetype off                   " 必须的

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" 让 Vundle 管理 Vundle
" 此条必须有
Bundle 'gmarik/vundle'

" 例子
 " 代码存放在 vim script 上
" Bundle 'FuzzyFinder'
" 代码源在 github 上的
" Bundle 'mattn/zencoding-vim'
" 其它网站
"Bundle 'git://git.wincent.com/command-t.git'

Bundle 'Tagbar'
Bundle 'bash-support.vim'
Bundle 'c.vim'
"vim库
Bundle 'L9' 
"查找
Bundle 'FuzzyFinder'
"buffer管理
Bundle 'vim-scripts/bufexplorer.zip'
"run command in vim
"Bundle 'basepi/vim-conque'

"状态栏
"Bundle 'Lokaltog/vim-powerline'
"git 插件
Bundle 'tpope/vim-fugitive' 
"高亮选中单词并跳转
Bundle 'Lokaltog/vim-easymotion' 
"html 编辑
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'} 
"rails 编辑
Bundle 'tpope/vim-rails.git' 
"多重括号颜色区分匹配
Bundle 'kien/rainbow_parentheses.vim'
"目录树
Bundle 'vim-scripts/The-NERD-tree'
map <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' , 'tags']
"代码完成
Bundle 'Valloric/YouCompleteMe'
"Vim plugin: Testing framework for Vim script
Bundle 'kana/vim-vspec'
"将代码行最后无效的空格标红
Bundle 'bronson/vim-trailing-whitespace'
"python 语法检查
Bundle 'kevinw/pyflakes-vim'
filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins
"自动补全单引号，双引号等
Bundle 'Raimondi/delimitMate'
" for python docstring ",优化输入
au FileType python let b:delimitMate_nesting_quotes = ['"']

"打开文件
Bundle 'https://git.wincent.com/command-t.git' 
"puppet代码高亮
Bundle 'https://github.com/rodjek/vim-puppet'
"python 代码完成
"Bundle 'https://github.com/davidhalter/jedi-vim'

filetype plugin indent on     " 必须有
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..


"" Jedi options
"" Jedi options
""Jedi is by default automatically initialized. If you don't want that I suggest you disable the auto-initialization in your .vimrc:
"let g:jedi#auto_initialization = 1
"
""There are also some VIM options (like completeopt) which are automatically initialized, if you don't want that:
"let g:jedi#auto_vim_configuration = 0
"
""The goto is by default on <leader g>. If you want to change that:
"let g:jedi#goto_assignments_command = '<C-g>'
"
""get_definition is by default on <leader d>. If you want to change that:
"let g:jedi#goto_definitions_command = '<C-d>'
"
""Showing the pydoc is by default on K If you want to change that:
"let g:jedi#documentation_command = 'K' 
"
"let g:jedi#use_tabs_not_buffers = 0 
""If you are a person who likes to use VIM-buffers not tabs, you might want to put that in your .vimrc:
"
""Jedi automatically starts the completion, if you type a dot, e.g. str., if you don't want this:
"let g:jedi#popup_on_dot = 0 
"
""Jedi selects the first line of the completion menu: for a better typing-flow and usually saves one keypress.
"let g:jedi#popup_select_first = 0 
"
""There's some support for refactoring:
""let g:jedi#rename_command = '<C-r>'
"
""And you can list all names that are related (have the same origin):
"let g:jedi#usages_command = '<C-n>'
"
""If you want to change the default autocompletion command:
"let g:jedi#completions_command = '<M-/>'
"
""By default you get a window that displays the function definition you're currently in. If you don't want that:
"let g:jedi#show_call_signatures = '0'

" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

"colorscheme desert
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
"set expandtab

" Be smart when using tabs ;)
" set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

"set ai "Auto indent
"set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
"map <space> /
"map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
"map <leader>n :cn<cr>
map <leader>p :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction


"let &termencoding=&encoding
"set fileencodings=utf-8,gbk,ucs-bom,cp936
"#再提供一个实践中觉得不错的配置：
" Encoding related
set encoding=UTF-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
filetype plugin indent on
set completeopt=longest,menu
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"set tags=/home/chi/temp/redis-2.4.8/src/tags
"set tags=/home/chi/work/os/linux-0.11-src/linux/tags

"current folder
"set tags=tags;/
set tags=./tags,tags
"set tags+=/home/chi/work/open-source-code/linux.kernel.2.6/tags
set nocsverb
" 自动设当前编辑的文件所在目录为当前工作路径
"set autochdir
"set showmatch
autocmd FileType c,h,cpp,S set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab | set nolist | set tags+=~/.vim/systags|cs add /home/chi/work/open-source-code/linux.kernel.2.6/cscope.out
autocmd FileType python set expandtab | set list | set listchars=tab:>- | set tags+=~/.vim/python2.7.3_tags | cs add /home/chi/.pythonbrew/dists/Python-2.7.3/cscope.out 

"open/close Tlist
"let Tlist_Auto_Open=1
colorscheme torte
"koehler

syntax on "语法高亮
set number "显示行数
<<<<<<< HEAD
=======
set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 15
>>>>>>> 364f4518f6ef994e7347c388744dad770aa632fd
"set guifont=Monaco\ 11

"在状态栏显示正在输入的命令
set showcmd

set modeline
set background=dark

autocmd FileType python setlocal foldmethod=indent
"默认展开所有代码
set foldlevel=99
map <F3> za


"###################################################
"   custom Settings
"###################################################
map <space> <c-f>
map <S-b> <c-b>

"tagbar
"nmap <F8> :TagbarToggle<CR> 
nmap <F8> :TagbarOpen fj <CR> 
nmap <M-.> <C-]>
nmap <M-m> <C-]>
nmap <M-,> <C-t>
nmap <M-n> <C-t>
"nmap <M-m> <C-o>
nmap <M-/> :ts  <CR>

"For Gnome-terminal, use the following instead:
"imap ^[i <Esc>
"^[i should be typed by pressing Ctrl-v Alt-i
nmap <M-w> :w<CR>
"imap <M-w> <C-O>:w<CR>
imap <M-w> <Esc>:w<CR>
nmap <M-q> :q<CR>
imap <M-q> <Esc>:q<CR>
<<<<<<< HEAD
if has("gui_running")

=======
"插入模式移动光标
imap <M-h> <Left>
imap <M-j> <Down>
imap <M-k> <Up>
imap <M-l> <Right>
if has("gui_running")
>>>>>>> 364f4518f6ef994e7347c388744dad770aa632fd
else
"	nmap w :w<CR>
"	imap w <Esc>:w<CR>
"	nmap q :q<CR>
"	imap q <Esc>:q<CR>

	" 防止terminal截取alt键,导致M-x的快捷键不能用
<<<<<<< HEAD
	for UseAlt in range ( 44 , 47 )	+ range( 109, 122)
		"+ range ( 97 , 122)
=======
	for UseAlt in range ( 44 , 47 )	+ range ( 97 , 122)
>>>>>>> 364f4518f6ef994e7347c388744dad770aa632fd
		exe "set <M-" .nr2char(UseAlt).">=\<Esc>" .nr2char (UseAlt)
	endfor
endif
"let g:tagbar_left=1

map bf :BufExplorer<CR>

set fileencoding=utf-8
set fileencodings=utf-8,gb18030,utf-16,big5

"Alt 组合键不映射到菜单上
set winaltkeys=no
"组合键延迟
<<<<<<< HEAD
set timeoutlen=500
set ttimeoutlen=500
=======
set timeoutlen=400
set ttimeoutlen=400
>>>>>>> 364f4518f6ef994e7347c388744dad770aa632fd

set pastetoggle=<F8>

:set vb t_vb=

"silent !stty -ixon > /dev/null 2>/dev/null

"试用十进制
set nrformats=

<<<<<<< HEAD
"au BufRead *.py map <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR>
=======
>>>>>>> 364f4518f6ef994e7347c388744dad770aa632fd
au BufRead *.py map <buffer> <F5> :w<CR>:!bash main.sh <CR>

let g:ycm_key_invoke_completion = '<M-/>'
let g:ycm_min_num_of_chars_for_completion = 99
nmap K :YcmCompleter GoToDefinition<CR>

"鼠标右键弹出菜单
set mousemodel=popup

<<<<<<< HEAD
=======
"gvim最大化
>>>>>>> 364f4518f6ef994e7347c388744dad770aa632fd
function Maximize_Window()
  silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

<<<<<<< HEAD
so ~/.local.vim
=======
"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h
>>>>>>> 364f4518f6ef994e7347c388744dad770aa632fd
