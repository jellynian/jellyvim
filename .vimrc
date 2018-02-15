" 基础设置
syntax on
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
set showcmd         		" 输入的命令显示出来，看的清楚些  
set incsearch               "在程序中查询一单词，自动匹配单词的位置；如查询desk单词，当输到/d时，会自动找到第一个d开头的单词，当输入到/de时，会自动找到第一个以ds开头的单词，以此类推，进行查找；当找到要匹配的单词时，别忘记回车
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离
set cul "高亮光标所在行
set cuc
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示
set go=             " 不要图形按钮
color desert     " 设置背景主题

autocmd BufNewFile *.cpp,*.c  exec ":call SetTitle()" 

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
set langmenu=zh_CN.UTF-8
set helplang=cn

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
"将tab替换为空格
nmap tt :%s/\t/    /g<CR>
""定义函数SetTitle，自动插入文件头 

func SetTitle() 
    "如果文件类型为cpp文件 
    if &filetype == 'cpp'
    	call setline(1,"#include <iostream>")
    	call append(line("."), "#include <cstdio>")
    	call append(line(".")+1, "#include <algorithm>")
    	call append(line(".")+2, "#include <string>")
    	call append(line(".")+3, "")
    	call append(line(".")+4, "using namespace std;")
    	call append(line(".")+5, "int main()")
    	call append(line(".")+6, "{")
    	call append(line(".")+7, "")
    	call append(line(".")+8, "")
    	call append(line(".")+8, "  return 0;")
    	call append(line(".")+9, "}")
    endif

    if &filetype == 'c'
	    call setline(1,"#include <stdio.h>")
        call append(line("."), "#include <stdlib.h>")
	endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal GG
endfunc 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Bundle 'Lokaltog/vim-powerline'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'jnurmine/Zenburn'
Bundle 'vim-scripts/minibufexplorerpp'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"YouCompleteMe 配置 
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1

let g:nerdtree_tabs_open_on_console_startup=1

" 设置主题
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

set background=dark
"colorscheme molokai
"colorscheme solarized
"colors zenburn
"按键绑定
nnoremap <silent> <F3> :NERDTreeToggle <CR>

