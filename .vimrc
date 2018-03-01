" 基础设置
syntax on                   "开启语法高亮
set backspace=2
set nocompatible            " be iMproved, required
filetype on                 " required
set nu
set history=1000            "记录历史的行数
set background=dark         "背景使用黑色
set autoindent              "vim使用自动对齐，也就是把当前行的对齐格式应用到下一行(自动缩进）
set cindent                 "（cindent是特别针对 C语言语法自动缩进）
set smartindent             "依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用
set tabstop=4               "设置tab键为4个空格，
set shiftwidth =4           "设置当行之间交错时使用4个空格
set ai!                     " 设置自动缩进
set showmatch               "设置匹配模式，类似当输入一个左括号时会匹配相应的右括号
set ruler                   "在编辑过程中，在右下角显示光标位置的状态行
set nohls                   "默认情况下，寻找匹配是高亮度显示，该设置关闭高亮显示
set showcmd                     " 输入的命令显示出来，看的清楚些
set incsearch               "在程序中查询一单词，自动匹配单词的位置；如查询desk单词，当输到/d时，会自动找到第一个d开头的单词，当输入到/de时，会自动找到第一个以ds开头的单词，以此类推，进行查找；当找到要匹配的单词时，别忘记回车
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离
set cul "高亮光标所在行
set cuc
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示
set go=             " 不要图形按钮
color desert     " 设置背景主题
"set laststatus=1   " 启动显示状态行(1),总是显示状态行(2)
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4

set shiftwidth=4
" 使用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch
"语言设置
set langmenu=en_us.UTF-8
set helplang=en

" 总是显示状态行
set cmdheight=2
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"访问系统剪切板
set clipboard=unnamed

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" On-demand loading
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'jnurmine/Zenburn'
Plug 'vim-scripts/minibufexplorerpp'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'tell-k/vim-autopep8'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
" Initialize plugin system
call plug#end()


"YouCompleteMe 配置
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path = '/usr/local/bin/python3'

let g:autopep8_disable_show_diff=1  "autopep8设置
"let g:mapleader=","
"let g:nerdtree_tabs_open_on_console_startup=1   "vim在终端启动时自动显示 nerdtree
let g:NERDTreeChDirMode=1
let g:NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let g:NERDTreeShowBookmarks=1
let g:NERDTreeWinSize=25

"主题设置
set background=dark
colorscheme molokai
"colorscheme solarized
"colors zenburn
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'


"缩进指示线"
"let g:indentLine_char='┆'
let g:indentLine_enabled = 1

"按键绑定
"F2开启和关闭树
map <F2> :NERDTreeToggle<CR>

noremap <C-k> :Autopep8<CR>
autocmd BufNewFile *.py  :call SetPyTitle()


func SetPyTitle() 
    call setline(1,"# -*- coding: utf-8 -*-")
    call append(line("."), "#")
    call append(line(".")+1, "# Copyright 2018 JellyNian<jellynian6@gmail.com>.")
    call append(line(".")+2, "#")
endfunc 


