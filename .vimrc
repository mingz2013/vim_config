" Configuration file for vim


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to  auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'




set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set backspace=2		" more powerful backspacing


syntax on
"语法高亮

"autocmd InsertLeave * se nocul
"autocmd InsertEnter * se cul
set cursorline
set cursorcolumn
"用浅色高亮当前行

set completeopt=longest,menu
"设置自动补全

set smartindent
"智能对齐

set autoindent
"自动对齐

set confirm
"在处理未保存或只读文件的时候，弹出确认

set tabstop=4
"Tab键的宽度

set softtabstop=4
set shiftwidth=4
"统一缩进为4

set noexpandtab
"不要用空格代替制表符

set number
"显示行号

set history=50
"历史记录数

set hlsearch
set incsearch
"搜索逐字符高亮

set gdefault
"行内替换

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1
"编码设置

colorscheme torte
"设置颜色主题

"set guifont=Menlo:h16:cANSI
"设置字体

set langmenu=zn_CN.UTF-8
set helplang=cn
"语言设置

set cmdheight=2
"命令行（在状态行）的高度，默认为1，这里是2

set ruler
"在编辑过程中，在右下角显示光标位置的状态行

set laststatus=2
"总是显示状态行

set showcmd
"在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来

set scrolloff=3
"光标移动到buffer的顶部和底部时保持3行距离

set showmatch
"高亮显示对应的括号

set matchtime=5
"对应括号高亮的时间（单位是十分之一秒）

set autowrite
"再切换buffer时自动保存当前文件

set wildmenu
"增强模式中的命令行自动完成操作

set linespace=2
"字符间插入的像素行数目

set whichwrap=b,s,<,>,[,]
"开启Normal或Visual模式下Backspace键，空格键，左方向键，右方向键，Insert或replace模式下左方向键，右方向键跳行的功能。

filetype plugin indent on
"分为三部分命令：file on, file plugin on, file indent on.分别表示自动识别文件类型，用文件类型脚本，使用缩进定义文件。



" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview





" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
